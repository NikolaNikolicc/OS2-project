#ifndef _testPrenos_hpp_
#define _testPrenos_hpp_

#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"

void fja(void* param){
    printInt(*(int*)param);
}

void testPrenosParametara(){
    int* a = new int(5);
    Thread* thread = new Thread(fja, (void*)a);
    thread->start();
}

#endif