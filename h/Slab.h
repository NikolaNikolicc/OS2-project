
#include "../lib/hw.h"
#include "../h/Buddy.h"
#include "../h/String.h"

struct Slab{
private:
    friend struct kmem_cache_s;
    size_t num_active = 0; // number of active objects in slab
    Slab* next = nullptr; // next slab
    size_t first_addr;
    size_t free_objects[];

public:
    void clear_slab(int num_of_objects_in_slab, int objsize, void (*dtor)(void *));
    size_t get_number_of_active_objects(){return num_active;}
    void* return_first_free_object_and_rearange_list(int, int);
    void increment_num_of_active(){num_active++;}
    void decrement_num_of_active(){num_active--;}
    void set_mask(int position, bool flag);
    bool is_active(int position);
};

struct kmem_cache_s{

    static kmem_cache_s* head;

    Slab* slabs_full = nullptr;
    Slab* slabs_partial = nullptr;
    Slab* slabs_free = nullptr;
    size_t num_slabs_full = 0;
    size_t num_slabs_partial = 0;
    size_t num_slabs_free = 0;

    size_t objsize; // size of each object packed in slab
    size_t num; // number of objects packed into the slab
    size_t size_of_arr;

    size_t size_in_blocks; // size of slab in blocks/pages

    void (*ctor)(void *); // constructor, can be NULL
    void (*dtor)(void *); // destructor, can be NULL

    const char* name;
    kmem_cache_s* next; // ptr to next cache in list

    size_t num_active_obj = 0; // current number of active objects in the cache
    bool growing = false; // if number of slabs doesn't grow since last shrink
    size_t shrink = 0; // how many times cache got shrink

    // methods
    size_t kmem_cache_shrink();
    void* kmem_cache_alloc();
    int kmem_cache_free(void* objp);
    int kmem_cache_destroy(size_t addr);
    void kmem_cache_info();

    // static methods
    static void* kmem_cache_create(const char* name, size_t size, void (*ctor)(void *), void (*dtor)(void *));
    static void* kmalloc(size_t size);
    static int kfree(const void* objp);
    static int is_small_buffer_size_correct(size_t size);
    static void print_info_all_caches();

private:
    void create_free_slab();
    static kmem_cache_s* check_if_name_exists(const char* name);
    static size_t pow(size_t deg);

};


static const size_t NUM_OF_OBJECTS_IN_SLAB = 5;