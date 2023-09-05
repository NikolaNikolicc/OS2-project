#ifndef _modif_hpp_
#define _modif_hpp_


#include "../test/printing.hpp"
#include "../h/syscall_cpp.hpp"

#include "../h/periodic.hpp"

Periodic* ptr[3];

void prva(void* n){
    printString("A\n");
}

void druga(void* n){
    printString("B\n");
}

void treca(void* n){
    printString("C\n");
}

void uspavaj(void* n){
    while(1){
//        time_sleep(10);
        printString("radi\n");
    }
}

void testModif(){
//    Periodic* ptr[3];

//    ptr[0] = new Periodic(&prva, nullptr, 5);
//    ptr[1] = new Periodic(&druga, nullptr, 5);
//    ptr[2] = new Periodic(&treca, nullptr, 5);
//
//    for(int i = 0; i < 3; i++){
//        ptr[i]->start();
//    }

    Thread* nit = new Thread(&uspavaj, nullptr);
    printInt((uint64)nit);
    nit->start();


    kill((thread_t)nit);
    while(1)thread_dispatch();



}

#endif