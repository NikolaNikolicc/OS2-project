#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/semaphore.hpp"
#include "../h/console.hpp"

void Riscv::switch_to_user(){
    mc_sstatus(SSTATUS_SPP);
}

void Riscv::switch_to_priviledged() {
    ms_sstatus(SSTATUS_SPP);
}

void Riscv::popSppSpie(){

    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap(){

//    uint64 arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7;
    uint64 args[8];
    __asm__ volatile("mv %[arg0], a0" : [arg0]"=r"(*args)); // za kod sistemskog poziva
    __asm__ volatile("mv %[arg1], a1" : [arg1]"=r"(*(args + 1))); // argumenti s leva na desno
    __asm__ volatile("mv %[arg2], a2" : [arg2]"=r"(*(args + 2)));
    __asm__ volatile("mv %[arg3], a3" : [arg3]"=r"(*(args + 3)));
    __asm__ volatile("mv %[arg4], a4" : [arg4]"=r"(*(args + 4)));
    __asm__ volatile("mv %[arg5], a5" : [arg5]"=r"(*(args + 5)));
    __asm__ volatile("mv %[arg6], a6" : [arg6]"=r"(*(args + 6)));
    __asm__ volatile("mv %[arg7], a7" : [arg7]"=r"(*(args + 7)));

    uint64 scause = r_scause();

    if (scause == 0x8000000000000001UL){
        mc_sip(SIP_SSIP);

        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        TCB::time_slice_counter++;
        TS::decrement_and_remove();
        if (TCB::time_slice_counter >= TCB::running->get_time_slice()) {
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::time_slice_counter = 0;
            TCB::thread_dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }

    }
    else if(scause == 0x0000000000000009UL || scause == 0x0000000000000008UL){
        uint64 retVal = 0;
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();
            // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
            switch(*args){
                case 0x01:
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_alloc(*(args + 1)));
                    break;
                case 0x02:
                    retVal = (uint64)(MemoryAllocator::getInstance().memory_free((void*)*(args + 1)));
                    break;
                case 0x11:
                    retVal = (uint64)(TCB::thread_create((TCB**)*(args + 1),
                                                         (void(*)(void*))*(args + 2),
                                                         (void*)*(args + 3),
                                                         (void*)*(args + 4),
                                                         (void*)*(args + 6)
                                                         ));
                    break;
                case 0x12:
                    retVal = TCB::thread_exit();
                    break;
                case 0x13:
                    TCB::thread_dispatch();
                    break;
                case 0x21:
                    retVal = (uint64)(MySemaphore::sem_open((MySemaphore**)*(args + 1),
                                                          (uint64)*(args + 2)
                                                          ));
                    break;
                case 0x22:
                    retVal = (uint64)(MySemaphore::sem_close((MySemaphore*)*(args + 1)));
                    break;
                case 0x23:
                    retVal = (uint64)(MySemaphore::sem_wait((MySemaphore*)*(args + 1)));
                    break;
                case 0x24:
                    retVal = (uint64)(MySemaphore::sem_signal((MySemaphore*)*(args + 1)));
                    break;
                case 0x31:
                    TCB::time_sleep(*(args + 1));
                    break;
                case 0x41:
                    retVal = Console::getInstance().get_from_input();
                    break;
                case 0x42:
                    Console::getInstance().put_in_output((char)*(args + 1));
                    break;
                case 0x50:
                    Scheduler::getInstance().put((TCB*)*(args + 1));
                    break;
                case 0x60:
                    Riscv::switch_to_user();
                    break;
                case 0x61:
                    Riscv::switch_to_priviledged();
                    break;
                case 0x70:
                    ((TCB*)*(args + 1))->set_periodic(true);
                case 0x111:
                    ((TCB*)*(args + 1))->set_finished(true);
                default:
                    retVal = 0;
                    break;
            }
            // postavljamo novu povratnu vrednost za a0
            __asm__ volatile("mv a0, %[ret]" : : [ret]"r"(retVal));
            __asm__ volatile("sd a0, 10 * 8(s0)");

            // pomeramo pc za 4 bajta unapred
            w_sepc(sepc);
            if(*args != 0x60 && *args != 0x61)
                w_sstatus(sstatus);
    }
    else if (scause == 0x8000000000000009UL)
    {
        int irq = plic_claim();
        if(irq == CONSOLE_IRQ){
            // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
            while(*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
                Console::getInstance().put_in_input(*((char*)CONSOLE_RX_DATA));
                if(*((char*)CONSOLE_RX_DATA) == 107){
                    TCB* tmp = periodicThread::getInstance().get();
                    tmp->set_finished(true);
                }
            }
        }
        plic_complete(irq);
    }
    else{
        // unexpected trap cause
        // print scause
        // print sepc
        // print stval
    }
}