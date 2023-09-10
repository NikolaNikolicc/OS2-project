#include "../h/scheduler.hpp"
#include "../h/TCB.hpp"

Scheduler* Scheduler::scheduler_instance = nullptr;
kmem_cache_t* Scheduler::scheduler_cache = nullptr;

TCB* Scheduler::head = nullptr;
TCB* Scheduler::tail = nullptr;

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

Scheduler &Scheduler::getInstance() {
    if(!scheduler_instance){
        scheduler_cache = (kmem_cache_t*) kmem_cache_create("scheduler_cache", sizeof(Scheduler), nullptr, nullptr);
        scheduler_instance = (Scheduler*)kmem_cache_alloc(scheduler_cache);
    }
    return *scheduler_instance;
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
