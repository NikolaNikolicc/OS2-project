
#include "../lib/hw.h"
#include "../h/console.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/userMain.hpp"
#include "../h/fun.hpp"



int main(){

    // ###################################################################################################
    // upis u stvec
    uint64 address = reinterpret_cast<uint64>(&Riscv::supervisorTrap);
    Riscv::w_stvec(address);

    // kreiranje main niti
    thread_t mainThread = nullptr;
    thread_create(&mainThread, nullptr, nullptr);
    TCB::running = (TCB*)mainThread;

    // kreiranje idle niti
    thread_create((thread_t*)&TCB::idle, &idle_function, nullptr);

    // kreiranje userMain niti
//    thread_t userMainThread = nullptr;
//    thread_create(&userMainThread, &userMain, nullptr);

    thread_t userMainThread = nullptr;
    thread_create(&userMainThread, &user_main_wrapper, nullptr);

    // kreiranje niti za ispis
    thread_t consoleWriter = nullptr;
    thread_create(&consoleWriter, &putc_function, nullptr);
    Console::getInstance();

    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    // ako sam obrisao userMain pristupam nepostojecoj strukturi
//    while(!((TCB*)userMainThread)->is_finished()){
//        thread_dispatch();
//    }

    while(!is_user_main_finished || Console::getInstance().get_output_size()){
        thread_dispatch();
    }


    delete Console::getInstance().get_input_buff();
    return 0;
}