//
// Created by os on 8/18/23.

#include "../h/SlabI.h"
#include "../h/Buddy.h"
#include "../h/Slab.h"

//
void kmem_init(void *space, int block_num) {
    BuddySystem::getInstance(space, block_num);
}

kmem_cache_t *kmem_cache_create(const char *name, size_t size, void (*ctor)(void *), void (*dtor)(void *)) {
    if(size_start(name)){
        return nullptr;
    }
    return (kmem_cache_t*)kmem_cache_s::kmem_cache_create(name, size, ctor, dtor);
}

int kmem_cache_shrink(kmem_cache_t *cachep) {
    return cachep->kmem_cache_shrink();
}

void *kmem_cache_alloc(kmem_cache_t *cachep) {
    for(int i = 0; i < 2; i++){
        void* tmp = cachep->kmem_cache_alloc();
        if(tmp != nullptr)return tmp;
    }
    // not enough memory, or exception triggered
    return nullptr;
}

void kmem_cache_free(kmem_cache_t *cachep, void *objp) {
    cachep->kmem_cache_free(objp);
}

void *kmalloc(size_t size) {
    if(!kmem_cache_t::is_small_buffer_size_correct(size))return nullptr;
    return kmem_cache_t::kmalloc(size);
}

void kfree(const void *objp) {
    kmem_cache_t::kfree(objp);
}

void kmem_cache_destroy(kmem_cache_t *cachep) {
    cachep->kmem_cache_destroy((size_t)cachep);
}

void kmem_cache_info(kmem_cache_t *cachep) {
    cachep->kmem_cache_info();
}

void print_all_caches() {
    kmem_cache_t::print_info_all_caches();
}
