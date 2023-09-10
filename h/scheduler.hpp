#ifndef _scheduler_hpp_
#define _scheduler_hpp_

#include "../test/printing.hpp"
#include "SlabI.h"

class TCB;

class Scheduler{
public:

    static Scheduler& getInstance();

    Scheduler(const Scheduler&) = delete;
    void operator=(Scheduler const&) = delete;

    TCB* get();
    void put(TCB* tcb);

//    static void printScheduler();

private:

    static Scheduler* scheduler_instance;
    static kmem_cache_t* scheduler_cache;

    static TCB* head;
    static TCB* tail;
};

#endif
