#include "../test/userMain.hpp"
#include "../test/Threads_C_API_test.hpp" // zadatak 2, niti C API i sinhrona promena konteksta
#include "../test/Threads_CPP_API_test.hpp" // zadatak 2., niti CPP API i sinhrona promena konteksta

#include "../test/ConsumerProducer_C_API_test.h" // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta
//#include "../test/testPrenosParametara.hpp"
//#include "../test/modif.hpp"

#include "../h/SlabI.h"
#include "../h/Buddy.h"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"
#include "test_prvi.h"
#include "test_drugi.h"
#include "../test/test_slab_buddy_alloc.h"

class Class2{
    char a[4096000];
};

void userMain() {
//    test_adrese();
//    test_pristup_parametru();
//    test_razlika_u_adresama();
//    test_performansi();

//    test_niti();

//    test_prvi();
    test_drugi();

//    while(true){
//        Class2* c = new Class2();
//        if(c == nullptr){
//            printString("Nema mesta\n");
//        }else{
//            printInt((size_t)c);
//            printString("\n");
//        }
//
//    }

//    Threads_C_API_test::Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    Threads_CPP_API_test::Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
//
//    ConsumerProducer_C_API_test::producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//    ConsumerProducer_CPP_Sync_API_test::producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
//
//    ThreadSleep_C_API_test::testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP_API_test::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

}