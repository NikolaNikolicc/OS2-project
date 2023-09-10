#ifndef _thread_sleep_hpp_
#define _thread_sleep_hpp_

#include "SlabI.h"

class TCB;

class TS{
public:

    static TS& getInstance();

    TS(const TS&) = delete;
    void operator=(TS const&) = delete;

    static void put(TCB* tcb);
    static void decrement_and_remove();

//    static void printTS();

private:

    static TS* ts_instance;
    static kmem_cache_t* ts_cache;
    static TCB* head;

};

#endif