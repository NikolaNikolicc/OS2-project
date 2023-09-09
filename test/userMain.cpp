#include "../test/userMain.hpp"
//#include "../test/Threads_C_API_test.hpp" // zadatak 2, niti C API i sinhrona promena konteksta
#include "../test/Threads_CPP_API_test.hpp" // zadatak 2., niti CPP API i sinhrona promena konteksta

//#include "../test/ConsumerProducer_C_API_test.h" // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta
//#include "../test/testPrenosParametara.hpp"
//#include "../test/modif.hpp"

#include "../h/SlabI.h"
#include "../h/Buddy.h"

#include "../h/syscall_cpp.hpp"

#include "printing.hpp"

class Class1 {
public:
    char c;
};

void test_adrese(){
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    kmem_cache_info(cache1);
    const int arrSize = 1000;
    Class1* arr[arrSize];
    for (int i = 0; i < arrSize; i++) {
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
        printString("(");
        printInt(i);
        printString(") ");
        printInt((size_t)arr[i]);
        if (i % 100 == 0)
            printString("\n");
        else
            printString(" ");
    }
    printString("\n");
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
}

void test_pristup_parametru(){
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    kmem_cache_info(cache1);
    const int arrSize = 8000;
    Class1* arr[arrSize];
    char c = 'a';
    for (int i = 0; i < arrSize; i++) {
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
        printString("(");
        printInt(i);
        printString(") ");
        arr[i]->c = c;
        if(c++ == 'a' + 30){
            c = 'a';
        }
        printString("podatak: ");
        printInt(arr[i]->c);
        printString(" adresa: ");
        printInt((size_t)arr[i]);
        printString("\t");
        if (i % 100 == 0)
            printString("\n");
        else
            printString(" ");
    }
    printString("\n");
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
}

const int arrSize = 100000;
//const int arrSize = 2032;
Class1* arr[arrSize];

void test_performansi() {
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    kmem_cache_info(cache1);
    for (int i = 0; i < arrSize; i++) {
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
//        printInt((size_t)arr[i]);
//        printString("\n");
    }
    printString("*****************************AFTER ALLOCATION******************************\n\n");
    kmem_cache_info(cache1);
    kmem_cache_free(cache1, arr[0]);
    for (int i = 0; i < arrSize; i++) {
//        if(i == 2023){
//            kmem_cache_info(cache1);
//        }
        int ret = kmem_cache_free(cache1, arr[i]);
        if(ret == -1){
//            if(i == 2023){
//                kmem_cache_info(cache1);
//            }
            printString("Neuspesna dealokacija: ");
            printInt(i);
            printString(", na adresi: ");
            printInt((size_t)arr[i]);
            printString("\n");
        }
    }
    printString("*****************************AFTER DEALLOCATION****************************\n\n");
    kmem_cache_info(cache1);
}

void test_razlika_u_adresama(){
    kmem_cache_t* cache1 = kmem_cache_create("Class1", sizeof(Class1), nullptr, nullptr);
    printString("*****************************BEFORE ALLOCATION*****************************\n\n");
    kmem_cache_info(cache1);
    Class1* arr[arrSize];
    size_t prevAddr = 0;
    for (int i = 0; i < arrSize; i++) {
        arr[i] = (Class1*)kmem_cache_alloc(cache1);
        if ((size_t)arr[i] - prevAddr != 1 && prevAddr != 0) {
            printString("Nadjena razlika sa prethodnom adresom: ");
            printInt((size_t)arr[i]);
            printString("\n");
        }
        if((size_t)arr[i] - prevAddr == 0){
            printString("Nadjene dve uzastopne iste adrese");
            printInt((size_t)arr[i]);
            printString("\n");
        }
//        for(int j = 0; j < i; j++){
//            if((size_t)arr[i] - (size_t)arr[j] == 0){
//                printString("Ova adresa ima duplikat: ");
//                printInt((size_t)arr[i]);
//                printString("\n");
//            }
//        }
        prevAddr = (size_t)arr[i];

    }
    printString("*****************************AFTER ALLOCATION******************************\n\n");
    printString("\n");
    kmem_cache_info(cache1);
}

void test_niti(){
    Thread* threads[4];

    threads[0] = new WorkerA();
    printString("ThreadA created\n");
//    threads[0]->start();
}

void userMain() {
//    test_adrese();
//    test_pristup_parametru();
//    test_razlika_u_adresama();
//    test_performansi();

    test_niti();

//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

//    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//    testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

//    testModif();
//    testPrenosParametara();

}