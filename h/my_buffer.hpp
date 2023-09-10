#ifndef _my_buffer_hpp_
#define _my_buffer_hpp_

#include "../h/semaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"
#include "SlabI.h"

class MyBuffer {
private:
    int cap;
    int *buffer;
    int head, tail;

    MySemaphore* spaceAvailable;
    MySemaphore* itemAvailable;
    MySemaphore* mutexHead;
    MySemaphore* mutexTail;

    static kmem_cache_t* buffer_cache;
    static void buffer_setup(void* MyBuffer);
    static void buffer_destroy(void* MyBuffer);

public:

    static kmem_cache_t* &get_buffer_cache();

    void put(int val);
    int get();
    int getCnt();

    // operatori
    void *operator new(uint64 n){
        return kmem_cache_alloc(get_buffer_cache());
    }

    void *operator new[](uint64 n){
        if(n == 0)return nullptr;
        size_t num_of_elem = n / sizeof(MyBuffer);
        MyBuffer** arr =  (MyBuffer**)kmalloc(num_of_elem);
        return (void*)arr;
    }

    void operator delete(void* p)noexcept{
        kmem_cache_free(get_buffer_cache(), p);
    }

    void operator delete[](void* p)noexcept{
        if(p == nullptr)return;
        kfree(p);
    }

};


#endif

