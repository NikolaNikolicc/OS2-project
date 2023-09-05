#include "../h/scheduler.hpp"
#include "../h/TCB.hpp"

TCB* Scheduler::head;
TCB* Scheduler::tail;

TCB* Scheduler::get(){
    while(head) {
        if (!head) { return TCB::idle; }
        TCB *tmp = head;
        if (head == tail) head = tail = nullptr;
        else head = head->get_next_scheduler();
        tmp->set_next_scheduler(nullptr);
        if(!tmp->is_finished())return tmp;
    }
    return TCB::idle;
}

void Scheduler::put(TCB* tcb){
    if(tcb == TCB::idle)return;
    if(tcb->is_finished())return;
    tcb->set_next_scheduler(nullptr);
    if(tail){
        tail->set_next_scheduler(tcb);
        tail = tail->get_next_scheduler();
    }
    else head = tail = tcb;
}



//void Scheduler::printScheduler() {
//    TCB* tmp = head;
//    while(tmp){
//
//        printInt(tmp->get_thread_id());
//        printString("\t");
//
//        tmp = tmp->get_next_scheduler();
//    }
//    printString("\n");
//}
