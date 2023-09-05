#include "../test/userMain.hpp"
#include "../test/Threads_C_API_test.hpp" // zadatak 2, niti C API i sinhrona promena konteksta
//#include "../test/Threads_CPP_API_test.hpp" // zadatak 2., niti CPP API i sinhrona promena konteksta

//#include "../test/ConsumerProducer_C_API_test.h" // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta
//#include "../test/testPrenosParametara.hpp"
//#include "../test/modif.hpp"

#include "../h/Buddy.h"

void userMain() {

    size_t addr = (size_t )BuddySystem::getInstance().buddyAlloc(1);
    printInt(*(size_t*)(addr - sizeof(size_t)));
    printString("\n");
    size_t addr1 = (size_t)BuddySystem::getInstance().buddyAlloc(64);
    printInt(*(size_t*)(addr1 - sizeof(size_t)));
    printString("\n");
    BuddySystem::getInstance().buddyFree(addr1);
    BuddySystem::getInstance().buddyFree(addr);








//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

//    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//    testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

}