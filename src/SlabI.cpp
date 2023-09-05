//
// Created by os on 8/18/23.

#include "../h/SlabI.h"
#include "../h/Buddy.h"
#include "../h/Slab.h"

//
void kmem_init(void *space, int block_num) {
    BuddySystem::getInstance();
}

kmem_cache_t *kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    return (kmem_cache_t*)kmem_cache_s::kmem_cache_create(name, size, ctor, dtor);
}

int kmem_cache_shrink(kmem_cache_t *cachep) {
    return cachep->kmem_cache_shrink();
}
