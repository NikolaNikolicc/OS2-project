#ifndef _semaphore_hpp_
#define _semaphore_hpp_

#include "../lib/hw.h"
#include "../h/MemoryAllocator.hpp"
#include "SlabI.h"

class TCB;

class MySemaphore{
public:

    static int sem_open(
          MySemaphore** handle,
          uint64 init
          );
    static int sem_close(MySemaphore* handle);
    static int sem_wait(MySemaphore* id);
    static int sem_signal(MySemaphore* id);

    void put_in_blocked(TCB* tcb);

    TCB* get_from_blocked();

    void block();

    void unblock();

    // getteri i setteri
    bool get_indicator()const{ return indicator; }
    void set_indicator(bool v){ indicator = v; }
    int get_val()const{ return val; }
    void set_val(int v){ val = v; }

    // operatori
    void *operator new(uint64 n){
        return kmem_cache_alloc(get_sem_cache());
    }

    void *operator new[](uint64 n){
        if(n == 0)return nullptr;
        size_t num_of_elem = n / sizeof(MySemaphore);
        MySemaphore** arr =  (MySemaphore**)kmalloc(num_of_elem);
        return (void*)arr;
    }

    void operator delete(void* p)noexcept{
        kmem_cache_free(get_sem_cache(), p);
    }

    void operator delete[](void* p)noexcept{
        if(p == nullptr)return;
        kfree(p);
    }

private:

    static kmem_cache_t* &get_sem_cache();
    MySemaphore(uint64 init);

    static void semaphore_setup(void* mySemaphore);
    static void semaphore_destroy(void* mySemaphore);

    static kmem_cache_t* semaphore_cache;
    int val; // mora da bude signed jer ide i u minus

    bool indicator;

    TCB* head;
    TCB* tail;

};



#endif