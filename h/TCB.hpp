#ifndef _thread_hpp_
#define _thread_hpp_

#include "../lib/hw.h"
#include "../h/scheduler.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TS.hpp"
#include "../h/periodic_threads.hpp"
#include "SlabI.h"

class TCB{
public:
    using Body = void (*)(void*);

    // trazene
    static int thread_create(
        TCB** handle,
        void(*start_routine)(void*),
        void* arg,
        void* stack_space,
        bool flag
    );

    static int thread_exit();

    static void thread_dispatch();

    static int time_sleep(uint64 time);

    uint64 get_thread_id()const{ return id; }

    // getteri i setteri
    void set_finished(bool f){ this->finished = f; }
    bool is_finished()const{return finished;}
    void set_next_scheduler(TCB* nextThread){ next_scheduler = nextThread; }
    TCB* get_next_scheduler()const{ return next_scheduler; }
    void set_next_sleep(TCB* nextThread){ next_sleep = nextThread; }
    TCB* get_next_sleep()const{ return next_sleep; }
    void set_next_blocked(TCB* nextThread){ next_blocked = nextThread; }
    TCB* get_next_blocked()const{ return next_blocked; }
    uint64 get_time_sleep()const{ return sleep; }
    void set_time_sleep(uint64 new_time){ sleep = new_time; }
    uint64 get_time_slice()const{ return time_slice; }
    void set_periodic(bool b){
        periodic = b;
        periodicThread::getInstance().put(this);
    }
    void set_next_period(TCB* tcb){ next_period = tcb; }
    TCB* get_next_period()const{return next_period;}

    static void yield();

    // operatori
    void *operator new(uint64 n){
        return kmem_cache_alloc(get_tcb_cache());
    }

    void *operator new[](uint64 n){
        if(n == 0)return nullptr;
        size_t num_of_elem = n / sizeof(TCB);
        TCB** arr =  (TCB**)kmalloc(num_of_elem);
        return (void*)arr;
    }

    void operator delete(void* p)noexcept{
        kmem_cache_free(get_tcb_cache(), p);
    }

    void operator delete[](void* p)noexcept{
        if(p == nullptr)return;
        kfree(p);
    }

    // staticka promenljiva
    static TCB* running;
    static TCB* idle;
    static uint64 ID;


protected:


private:

    // konstruktor
    friend class Riscv;

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    void TCB_setup(Body body_init, void* arg, void* stack_space, bool b);
    static void tcb_destroy(void* MyTCB);
    static void context_switch(Context *oldContext, Context *runningContext);
    static void thread_wrapper();
    static kmem_cache_t* &get_tcb_cache();

    // atributi
    static uint64 time_slice_counter;
    static kmem_cache_t* tcb_cache;

    Body body;
    void* argument;
    uint64 *stack;
    Context context;
    bool finished;
    TCB* next_scheduler;
    TCB* next_sleep;
    TCB* next_blocked;
    uint64 sleep;
    uint64 time_slice;
    uint64 id;
    bool flag;
    bool periodic;
    TCB* next_period;
};



#endif