#include "../test/userMain.hpp"
//#include "../test/Threads_C_API_test.hpp" // zadatak 2, niti C API i sinhrona promena konteksta
//#include "../test/Threads_CPP_API_test.hpp" // zadatak 2., niti CPP API i sinhrona promena konteksta

//#include "../test/ConsumerProducer_C_API_test.h" // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta
//#include "../test/testPrenosParametara.hpp"
//#include "../test/modif.hpp"

#include "../h/SlabI.h"
#include "../h/Buddy.h"

#include "../h/syscall_cpp.hpp"

#include "printing.hpp"

Semaphore* s1 = new  Semaphore(1);
Semaphore* s2 = new Semaphore(0);
int a = 1;
int b = 2;

class WorkerAA: public Thread {
    void workerA(void* arg);
public:
    WorkerAA():Thread() {}

    void run() override {
        workerA(nullptr);
    }
};

void WorkerAA::workerA(void * arg){
    while(true){
        s1->wait();
        printString("ispis1");
        s2->signal();
    }
}

class WorkerBB: public Thread {
    void workerB(void* arg);
public:
    WorkerBB():Thread() {}

    void run() override {
        workerB(nullptr);
    }
};

void WorkerBB::workerB(void* arg){
    while(true){
        s2->wait();
        printString("ispis2");
        s1->signal();
    }
}

class A{
    char a[50000];
};

void userMain() {

    void * space = (void*)HEAP_START_ADDR;
    int block_num = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 / BLOCK_SIZE;
    kmem_init(space, block_num);
//
//    void* obj = kmalloc(32);
//    print_all_caches();
//    kfree(obj);
//    print_all_caches();

//    Thread* ta = new WorkerAA();
//    Thread* tb = new WorkerBB();
//
//    ta->start();
//
//    if(a == b){
//        tb->start();
//    }
    printString("Buddy allocator heap start: ");
    printInt(BuddySystem::getInstance().get_buddy_alloc_heap_start());
    printString("\n");
    printString("Buddy allocator heap end: ");
    printInt(BuddySystem::getInstance().get_buddy_alloc_heap_end());
    printString("\n");
    printString("Memory allocator heap start: ");
    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_start());
    printString("\n");
    printString("Memory allocator heap end: ");
    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_end());
    printString("\n\n");


    kmem_cache_s* cache = kmem_cache_create("test", sizeof(A), nullptr, nullptr);
    A* arr[120];
    A* elem;
    for(int i = 0; i < 120; i++){
        elem = (A*)kmem_cache_alloc(cache);
        arr[i] = elem;
        kmem_cache_info(cache);
    }
    kmem_cache_info(cache);
    kmem_cache_free(cache, arr[15]);
    kmem_cache_info(cache);
    elem = (A*)kmem_cache_alloc(cache);
    arr[15] = elem;
    kmem_cache_info(cache);
    for(int i = 0; i < 120; i++){
        kmem_cache_free(cache, arr[i]);
//        kmem_cache_info(cache);
    }
    kmem_cache_info(cache);


//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

//    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//    testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

}