//
// Created by os on 8/18/23.
//
#include "../h/Slab.h"
#include "../test/printing.hpp"

kmem_cache_s* kmem_cache_s::head = nullptr;

void* kmem_cache_s::kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {

    // check if name already exists in cache list
    for(kmem_cache_s* curr = kmem_cache_s::head; curr; curr = curr->next){
        if(curr->name == name){
            return nullptr;
        }
    }

    // assign values
    kmem_cache_s* tmp = (kmem_cache_s*)BuddySystem::getInstance().buddyAlloc(BLOCK_SIZE - sizeof(size_t));
    tmp->name = name;
    tmp->objsize = size;
    tmp->ctor = ctor;
    tmp->dtor = dtor;

    // assign default values
    tmp->slabs_full = tmp->slabs_partial = tmp->slabs_free = nullptr;
    tmp->num_slabs_full = tmp->num_slabs_partial = tmp->num_slabs_free = tmp->num_active_obj = tmp->shrink = 0;
    tmp->growing = false;

    // calc how many blocks one slab should contain
    tmp->size_in_blocks = 1;
    size_t min_size_of_objects = tmp->objsize * NUM_OF_OBJECTS_IN_SLAB;
    size_t min_size_of_arr = 2 * sizeof(size_t);
    // min requirements
    while(tmp->size_in_blocks * BLOCK_SIZE < sizeof(size_t)*2 + sizeof(Slab) + min_size_of_arr + min_size_of_objects){
        tmp->size_in_blocks++;
    }

    // calc how many objects one slab can contain
    int how_many_objects_into_one_slab = 10;
    int current_size_of_arr = 2;
    while(how_many_objects_into_one_slab * tmp->objsize <=
            (int)(tmp->size_in_blocks * BLOCK_SIZE - sizeof(size_t)*2 - sizeof(Slab) - current_size_of_arr * sizeof(size_t))){
        if(++how_many_objects_into_one_slab % 8 == 0){
            current_size_of_arr++;
        }
    }
    tmp->num = how_many_objects_into_one_slab;
    tmp->size_of_arr = current_size_of_arr;

    // creating an empty slab
    tmp->create_free_slab();

    // add new cache to cache chain
    tmp->next = kmem_cache_s::head;
    kmem_cache_s::head = tmp;

    return (void*)tmp;
}

///
/// \return velicinu za koliko je smanjena memorija (u bajtovima)
size_t kmem_cache_s::kmem_cache_shrink() {
    if(this->growing){
        this->growing = false;
        return 0;
    }
    Slab* curr = this->slabs_free, *prev;
    int cnt = (int)this->num_slabs_free;
    while(curr){
        prev = curr;
        curr = curr->next;
        prev->clear_slab(num, objsize, dtor);
        BuddySystem::getInstance().buddyFree((size_t)prev);
    }
    this->slabs_free = nullptr;
    this->num_slabs_free = 0;
    this->growing = false;
    this->shrink++;
    return cnt * this->size_in_blocks;
}

void *kmem_cache_s::kmem_cache_alloc() {
    if(num_slabs_partial != 0){
        void* addr = this->slabs_partial->return_first_free_object_and_rearange_list(this->num, this->objsize);
        this->num_active_obj++;
        this->slabs_partial->increment_num_of_active();

        if(this->slabs_partial->get_number_of_active_objects() == this->num){
            // move from partial to full
            Slab* tmp = this->slabs_partial;
            this->slabs_partial = this->slabs_partial->next;
            tmp->next = this->slabs_full;
            this->slabs_full = tmp;
            this->num_slabs_partial--;
            this->num_slabs_full++;
        }
        return addr;
    }
    else if(num_slabs_free != 0){
        void* addr1 = this->slabs_free->return_first_free_object_and_rearange_list(this->num, this->objsize);
        this->num_active_obj++;

        // move from free to partial
        Slab* tmp = this->slabs_free;
        this->slabs_free = this->slabs_free->next;
        tmp->next = this->slabs_partial;
        tmp->increment_num_of_active();
        this->slabs_partial = tmp;
        this->num_slabs_free--;
        this->num_slabs_partial++;

        return addr1;
    }
    else{
        // case if we need to expand cache
        create_free_slab();
        this->growing = true;
        return nullptr;
    }
}

void kmem_cache_s::create_free_slab() {
    Slab* tmp = (Slab*)(BuddySystem::getInstance().buddyAlloc(this->num * this->objsize + sizeof(Slab) + this->num * sizeof(bool)));
    tmp->num_active = 0;
    tmp->next = nullptr;
    this->slabs_free = tmp;
    tmp->first_addr = ((size_t)tmp + sizeof(Slab) + this->size_of_arr * sizeof(size_t));

    for(size_t  i = 0; i < this->size_of_arr; i++){
        tmp->free_objects[i] = 0;
    }

    // initialize slab if there is constructor
    if(this->ctor != nullptr){
        for(size_t i = 0, addr = tmp->first_addr; i < this->num; i++, addr += this->objsize){
            this->ctor((void*)addr);
        }
    }

    // set free pointer and increment number of free slabs
    this->slabs_free = tmp;
    this->num_slabs_free++;
}

void Slab::set_mask(int position,  bool flag){
    int pos = position / sizeof(size_t);
    int relative_pos = position % sizeof(size_t);
    size_t mask = 1;
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
        mask <<= 1;
    }
    if(flag){
        // setujemo bit na jedan
        this->free_objects[pos] |= mask;
    }else{
        // setujemo bit na nula
        mask = ~mask;
        this->free_objects[pos] &= mask;
    }
    return;
}

bool Slab::is_active(int position){
    int pos = position / sizeof(size_t);
    int relative_pos = position % sizeof(size_t);
    size_t mask = 1;
    for(int i = 0; i < sizeof(size_t) - relative_pos - 1; i++){
        mask <<= 1;
    }
    return this->free_objects[pos] & mask;
}

// returns -1 if object not found and 0 if removal is completed
int kmem_cache_s::kmem_cache_free(void *objp) {
    // check firstly in partial
    Slab* prev = nullptr;
    for(Slab* tmp = this->slabs_partial; tmp; tmp = tmp->next){
        if((size_t)objp > (size_t)tmp &&
        (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
            tmp->set_mask(position, false);
            if(this->dtor){
                this->dtor(objp);
            }
            if(this->ctor){
                this->ctor(objp);
            }

            this->num_active_obj--;
            tmp->decrement_num_of_active();
            size_t number_of_active = tmp->get_number_of_active_objects();
            if(number_of_active == 0){
                // move from partial to free
                if(prev)prev->next = tmp->next;
                else slabs_partial = tmp->next;
                tmp->next = this->slabs_free;
                this->slabs_free = tmp;
                this->num_slabs_partial--;
                this->num_slabs_free++;
            }
            return 0;
        }
        prev = tmp;
    }
    // check in full
    prev = nullptr;
    for(Slab* tmp = this->slabs_full; tmp; tmp = tmp->next){
        if((size_t)objp > (size_t)tmp &&
           (size_t)objp < (size_t)tmp + this->size_in_blocks * BLOCK_SIZE - sizeof(size_t)){
            size_t position = (((size_t)objp - (size_t)tmp->first_addr)) / (size_t)this->objsize;
            tmp->set_mask(position, false);
            if(this->dtor){
                this->dtor(objp);
            }
            if(this->ctor){
                this->ctor(objp);
            }
            this->num_active_obj--;
            tmp->decrement_num_of_active();

            // move from full to partial
            if(prev)prev->next = tmp->next;
            else slabs_full = tmp->next;
            tmp->next = this->slabs_partial;
            this->slabs_partial = tmp;
            this->num_slabs_full--;
            this->num_slabs_partial++;

            return 0;
        }
        prev = tmp;
    }
    return -1;
}

void *kmem_cache_s::kmalloc(size_t size) {
    // kreiraj ime
    const char* n = (const char*)concatenate_int_to_char_ptr((int)size);

    kmem_cache_s* tmp = check_if_name_exists(n);
    kmem_cache_s* cache = nullptr;
    if(tmp == nullptr){
        // napravi novi
        cache = (kmem_cache_s*)kmem_cache_create(n, size, nullptr, nullptr);
        if(!cache)return nullptr;
    }
    // vrati element
    void* elem = cache->kmem_cache_alloc();
    return elem;
}

// returns cache with given name, or nullptr if there is no such cache
kmem_cache_s *kmem_cache_s::check_if_name_exists(const char* name) {
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
        if(string_compare(tmp->name, name)){
            return tmp;
        }
    }
    return nullptr;
}

size_t kmem_cache_s::pow(size_t deg){
    size_t tmp = 1;
    for(size_t i = 0; i < deg; i++){
        tmp <<= 1;
    }
    return tmp;
}

int kmem_cache_s::is_small_buffer_size_correct(size_t size) {
    int deg = 5;
    size_t val = pow(deg);
    while(size > val){
        deg++;
        val <<= 1;
    }
    if(deg > 17)return 0;
    return (int)val;
}

// returns 0 if delete is executed, -1 if not
int kmem_cache_s::kfree(const void *objp) {
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
        if(tmp->kmem_cache_free((void*)objp) == 0)return 0;
    }
    // if not found return 1;
    return -1;
}

///
/// \param addr - address of cache that we deleting
/// \return 0 - if deleted all, -1 - if error ocurred
int kmem_cache_s::kmem_cache_destroy(size_t addr) {
    Slab *prev = nullptr, *tmp = this->slabs_full;
    while (tmp) {
        prev = tmp;
        tmp = tmp->next;
        prev->clear_slab((int)num, (int)objsize, dtor);
        BuddySystem::getInstance().buddyFree((size_t)prev);
    }
    prev = nullptr; tmp = this->slabs_partial;
    while (tmp) {
        prev = tmp;
        tmp = tmp->next;
        prev->clear_slab((int)num, (int)objsize, dtor);
        BuddySystem::getInstance().buddyFree((size_t)prev);
    }
    prev = nullptr; tmp = this->slabs_free;
    while (tmp) {
        prev = tmp;
        tmp = tmp->next;
        prev->clear_slab((int)num, (int)objsize, dtor);
        BuddySystem::getInstance().buddyFree((size_t)prev);
    }

    kmem_cache_s* cache = kmem_cache_s::head, *prev_cache = nullptr;
    while(cache){
        if((size_t)cache == addr){
            if(prev_cache){
                prev_cache->next = cache->next;
                cache->next = nullptr;
                BuddySystem::getInstance().buddyFree((size_t)cache);
                return 0;
            }
        }
        prev_cache = cache;
        cache = cache->next;
    }
    return -1;
}

void kmem_cache_s::kmem_cache_info() {

    printString("------------------- CACHE INFO -------------------\n");
    // print name and object size
    printString("Ime: ");
    printString(name);
    printString("\n");
    printString("Velicina objekta: ");
    printInt(objsize);
    printString("\n");

    // print size of cache (in blocks)
    size_t num_of_slabs = num_slabs_full + num_slabs_partial + num_slabs_free;
    size_t size_of_cache_in_blocks = num_of_slabs * size_in_blocks + 1;
    printString("Velicina kesa u blokovima: ");
    printInt(size_of_cache_in_blocks);
    printString("\n");

    // print number of slabs in cache
    printString("Broj ploca u kesu: ");
    printInt(num_of_slabs);
    printString("\n");

    // number of objects in one slab
    printString("Broj objekata koji staju u jednu plocu: ");
    printInt(num);
    printString("\n");

    // number of objects in one slab
    printString("Broj aktivnih objekata u kesu: ");
    printInt(num_active_obj);
    printString("\n");

    // stanje u slabovima
    printString("slobodni: ");
    for(Slab* tmp = slabs_free; tmp; tmp = tmp->next){
        printInt(tmp->get_number_of_active_objects());
        printString(" ");
    }
    printString("\n");
    printString("zaprljani: ");
    for(Slab* tmp = slabs_partial; tmp; tmp = tmp->next){
        printInt(tmp->get_number_of_active_objects());
        printString(" ");
    }
    printString("\n");
    printString("puni: ");
    for(Slab* tmp = slabs_full; tmp; tmp = tmp->next){
        printInt(tmp->get_number_of_active_objects());
        printString(" ");
    }
    printString("\n");

    // number of times cache shrank
    printString("Broj uspesnih smanjenja kesa: ");
    printInt(shrink);
    printString("\n");

    // metedata
    printString("Velicina metapodataka za kmem_cache_s: ");
    printInt(sizeof(kmem_cache_s));
    printString("\n");
    printString("Velicina metapodataka za Slab: ");
    size_t size_of_slab = sizeof(Slab) + this->size_of_arr * sizeof(size_t) + sizeof(size_t);
    printInt(size_of_slab);
    printString("\n");

    // percentage of fullfilment of cache
    size_t neto = sizeof(kmem_cache_s) + num_of_slabs * size_of_slab + num_active_obj * objsize;
    size_t bruto = (1 + num_of_slabs * size_in_blocks) * BLOCK_SIZE;

    printString("Realna iskoriscenost prostora: ");
    printInt(neto);
    printString("/");
    printInt(bruto);
    printString("\n");
    printString("Efektivna iskoriscenost prostora: ");
    printInt(num_active_obj * objsize);
    printString("/");
    size_t real_bruto = num_of_slabs * size_in_blocks * BLOCK_SIZE - num_of_slabs * sizeof(Slab);
    printInt(real_bruto);
    printString("\n");

    printString("----------------------- END ----------------------\n");
}

void kmem_cache_s::print_info_all_caches() {
    printString("\n\t\t\t ### PRINT ALL CACHES ###\t\t\t\n");
    for(kmem_cache_s* tmp = kmem_cache_s::head; tmp; tmp = tmp->next){
        tmp->kmem_cache_info();
    }
    printString("\t\t\t\t    ### END ###\t\t\t\n");
}

void *Slab::return_first_free_object_and_rearange_list(int number_of_objects_in_slab, int size_of_object) {
    int i = 0;
    while(i < number_of_objects_in_slab && this->is_active(i)){
        i++;
    }
    if(i >= number_of_objects_in_slab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    this->set_mask(i, true);
    return (void*)(this->first_addr + size_of_object * i);
}

void Slab::clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *)) {
    if(dtor == nullptr)return;
    for(int i = 0; i < num_of_objects_in_slab; i++){
        if(this->is_active(i)){
            dtor((void*)(this->first_addr + i * objsize));
        }
    }
}
