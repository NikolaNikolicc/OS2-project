#include "../test/userMain.hpp"
#include "../test/Threads_C_API_test.hpp" // zadatak 2, niti C API i sinhrona promena konteksta
//#include "../test/Threads_CPP_API_test.hpp" // zadatak 2., niti CPP API i sinhrona promena konteksta

//#include "../test/ConsumerProducer_C_API_test.h" // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta
//#include "../test/testPrenosParametara.hpp"
//#include "../test/modif.hpp"

#include "../h/SlabI.h"
#include "../h/Buddy.h"

void userMain() {

    void * space = (void*)HEAP_START_ADDR;
    int block_num = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 / BLOCK_SIZE;
    kmem_init(space, block_num);

    void* obj = kmalloc(32);
    print_all_caches();
    kfree(obj);
    print_all_caches();











//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

//    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//    testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

}