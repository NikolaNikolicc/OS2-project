//
// Created by os on 8/18/23.
//
#include "../h/Slab.h"

void* kmem_cache_s::kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {

    // check if name already exists in cache list
    for(kmem_cache_s* curr = head; curr; curr = curr->next){
        if(curr->name == name){
            return nullptr;
        }
    }

    // assign values
    kmem_cache_s* tmp = (kmem_cache_s*)BuddySystem::getInstance().buddyAlloc(BLOCK_SIZE);
    tmp->name = name;
    tmp->objsize = size;
    tmp->ctor = ctor;
    tmp->dtor = dtor;

    // calc how many blocks one slab should contain
    tmp->size_in_blocks = 1;
    while(tmp->size_in_blocks * BLOCK_SIZE < tmp->objsize + sizeof(Slab)){
        tmp->size_in_blocks++;
    }
    // calc how many objects one slab can contain
    int how_many_objects_into_one_slab = (int)(tmp->size_in_blocks * BLOCK_SIZE - sizeof(Slab)) / (int)(tmp->objsize);
    tmp->num = how_many_objects_into_one_slab;

    // creating an empty slab
    tmp->create_free_slab();

    // add new cache to cache chain
    if(head){
        tmp->next = head;
    }
    head = tmp;

    return tmp;
}

size_t kmem_cache_s::kmem_cache_shrink() {
    if(!this->growing){
        this->growing = false;
        return 0;
    }
    Slab* curr = this->slabs_free, *prev = nullptr;
    int cnt = (int)this->num_slabs_free;
    while(curr){
        prev = curr;
        curr = curr->next;
        BuddySystem::getInstance().buddyFree((size_t)prev + sizeof(size_t));
    }
    this->slabs_free = nullptr;
    this->num_slabs_free = 0;
    this->growing = false;
    return cnt * this->size_in_blocks;
}

void *kmem_cache_s::kmem_cache_alloc() {
    if(num_slabs_partial != 0){
        void* addr = this->slabs_free->returnFirstFreeObjectAndRearangeList(this->num, this->objsize);
        this->slabs_free->incrementNumOfActive();
        this->num_active_obj++;
        this->num_slabs_free--;
        if(this->slabs_free->getNumberOfActiveObjects() == this->num){
            // move to full
            Slab* tmp = this->slabs_free;
            this->slabs_free = this->slabs_free->next;
            tmp->next = nullptr;
            Slab* curr = this->slabs_full;
            while(curr->next != nullptr){
                curr = curr->next;
            }
            curr->next = tmp;
            this->num_slabs_full++;
        }
        else{
            // move to partial
            Slab* tmp = this->slabs_free;
            this->slabs_free = this->slabs_free->next;
            tmp->next = nullptr;
            Slab* curr = this->slabs_partial;
            while(curr->next != nullptr){
                curr = curr->next;
            }
            curr->next = tmp;
            this->num_slabs_partial++;
        }
        return addr;
    }
    if(num_slabs_free != 0){
        void* addr = this->slabs_partial->returnFirstFreeObjectAndRearangeList(this->num, this->objsize);
        this->slabs_partial->incrementNumOfActive();
        this->num_active_obj++;
        if(this->slabs_partial->getNumberOfActiveObjects() == this->num){
            // move to full
            move_from_to();
        }
        return addr;
    }
    if(!this->slabs_free && !this->slabs_partial){
        // expand cache
        create_free_slab();
    }
    // case if we need to expand cache
    return nullptr;
}

void kmem_cache_s::create_free_slab() {
    this->slabs_free =  (Slab*)((size_t)BuddySystem::getInstance().buddyAlloc((this->num+ sizeof(Slab)) * BLOCK_SIZE) - sizeof(size_t));
    this->slabs_free->firstAddr = ((size_t)this->slabs_free + sizeof(Slab));
    bool arr[this->num];
    for(size_t  i = 0; i < this->num; i++){
        arr[i] = false;
    }
    this->slabs_free->freeObjects = reinterpret_cast<bool **>(&arr);
    this->num_slabs_free++;

    // initialize slab if there is constructor
    if(ctor != nullptr){
        size_t addr = this->slabs_free->firstAddr;
        for(size_t i = 0; i < this->num; i++){
            this->ctor((void*)addr);
            addr += this->objsize;
        }
    }
}

void kmem_cache_s::move_from_to(Slab* slabs_from, size_t& num_from, Slab* slabs_to, size_t& num_to) {
    num_from--;
    Slab* tmp = slabs_from;
    slabs_from = slabs_from->next;
    tmp->next = nullptr;
    Slab* curr = slabs_to;
    while(curr->next != nullptr){
        curr = curr->next;
    }
    curr->next = tmp;
    num_to++;
}

void *Slab::returnFirstFreeObjectAndRearangeList(int numberOfObjectsInSlab, int sizeOfObject) {
    int i = 0;
    while(i < numberOfObjectsInSlab || (*this->freeObjects)[i]){
        i++;
    }
    if(i == numberOfObjectsInSlab)return nullptr; // nece se desiti ali postoji kao ogranicenje
    (*this->freeObjects)[i] = true;
    return (void*)(this->firstAddr + sizeOfObject * i);
}
