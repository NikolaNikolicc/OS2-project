
#include "../lib/hw.h"
#include "../h/Buddy.h"

class Slab{
private:
    size_t slab_size; // size of slab in bytes, this field exists because of implementation of buddy allocator
    size_t num_active = 0; // number of active objects in slab
    Slab* next = nullptr; // next slab
    bool **freeObjects;
    size_t firstAddr;
    friend struct kmem_cache_s;
public:
    size_t getNumberOfActiveObjects(){return num_active;}
    void* returnFirstFreeObjectAndRearangeList(int, int);
    void incrementNumOfActive(){num_active++;}
};

struct kmem_cache_s{
    Slab* slabs_full = nullptr;
    Slab* slabs_partial = nullptr;
    Slab* slabs_free = nullptr;
    size_t num_slabs_full = 0;
    size_t num_slabs_partial = 0;
    size_t num_slabs_free = 0;

    size_t objsize; // size of each object packed in slab
    size_t num; // number of objects packed into the slab

    size_t size_in_blocks; // size of slab in blocks/pages

    void (*ctor)(void *); // constructor, can be NULL
    void (*dtor)(void *); // destructor, can be NULL

    const char* name;
    kmem_cache_s* next; // ptr to next cache in list

    size_t num_active_obj = 0; // current number of active objects in the cache
    bool growing = false; // if number of slabs doesn't grow since last shrink
    size_t shrink = 0; // how many times cache got shrink

    // create cache
    static void* kmem_cache_create(const char* name, size_t size, void (*ctor)(void *), void (*dtor)(void *));
    size_t kmem_cache_shrink();
    void* kmem_cache_alloc();
    void create_free_slab();
    void move_from_to(Slab* slabs_from, size_t& num_from, Slab* slabs_to, size_t& num_to);

};

static kmem_cache_s* head = nullptr;
static const size_t NUM_OF_OBJECTS_IN_SLAB = 10;