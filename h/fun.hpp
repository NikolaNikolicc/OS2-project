#ifndef _fun_hpp_
#define _fun_hpp_

#include "../lib/hw.h"
#include "../h/console.hpp"
//#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/userMain.hpp"

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

#endif