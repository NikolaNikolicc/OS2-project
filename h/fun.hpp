#ifndef _fun_hpp_
#define _fun_hpp_

#include "../lib/hw.h"
#include "../h/console.hpp"
//#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/userMain.hpp"
#include "../h/SlabI.h"

void idle_function(void* arg){
    while(1){
        thread_dispatch();
    }
}

void putc_function(void* arg){
    switch_to_priviledged();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while(1){
        while((*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT)
              /*&& Console::getInstance().get_output_size()*/) {
            *((char*)CONSOLE_TX_DATA) = Console::getInstance().get_from_output();
        }
        thread_dispatch();
    }
}

static bool is_user_main_finished = false;
void user_main_wrapper(void* arg){
    switch_to_user();
    userMain();
    switch_to_priviledged();
    is_user_main_finished = true;
}

void memory_setup(){
    void * space = (void*)HEAP_START_ADDR;
    int block_num = ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR) / 8 / BLOCK_SIZE;
    kmem_init(space, block_num);
//    printString("Buddy allocator heap start: ");
//    printInt(BuddySystem::getInstance().get_buddy_alloc_heap_start());
//    printString("\n");
//    printString("Buddy allocator heap end: ");
//    printInt(BuddySystem::getInstance().get_buddy_alloc_heap_end());
//    printString("\n");
//    printString("Memory allocator heap start: ");
//    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_start());
//    printString("\n");
//    printString("Memory allocator heap end: ");
//    printInt(MemoryAllocator::getInstance().get_mem_alloc_heap_end());
//    printString("\n\n");
}

#endif