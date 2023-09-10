#include "../h/TS.hpp"
#include "../h/TCB.hpp"
#include "../h/scheduler.hpp"

TS* TS::ts_instance = nullptr;
kmem_cache_t* TS::ts_cache = nullptr;
TCB* TS::head = nullptr;

//void TS::printTS() {
//    TCB* tmp = head;
//    while(tmp){
//        printString("id: ");
//        printInt(tmp->get_thread_id());
//        printString(" time: ");
//        printInt(tmp->get_time_sleep());
//        printString("\t");
//
//        tmp = tmp->get_next_sleep();
//    }
//    printString("\n");
//}

void TS::put(TCB *tcb) {

    if(!head){
        head = tcb;
        head->set_next_sleep(nullptr);
//        printTS();
        return;
    }

    TCB* tmp = head, *prev = nullptr;
    uint64 t_sleep = tcb->get_time_sleep();

    while(tmp && t_sleep >= tmp->get_time_sleep()){
        t_sleep -= tmp->get_time_sleep();
        prev = tmp;
        tmp = tmp->get_next_sleep();

    }

    tcb->set_next_sleep(tmp);
    if(tmp)tmp->set_time_sleep(tmp->get_time_sleep() - t_sleep);
    tcb->set_time_sleep(t_sleep);
    if(prev){
        prev->set_next_sleep(tcb);
    }
    else{
        head = tcb;
    }
//    printTS();

    return;


}

void TS::decrement_and_remove() {

    if(!head)return;

    head->set_time_sleep(head->get_time_sleep() - 1);
    TCB* tmp;
    while(head && !head->get_time_sleep()){
        tmp = head;
        head = head->get_next_sleep();
        tmp->set_next_sleep(nullptr);
        Scheduler::getInstance().put(tmp);
    }
    return;

}

TS &TS::getInstance() {
    if(!ts_instance){
        ts_cache = (kmem_cache_t*) kmem_cache_create("ts_cache", sizeof(TS), nullptr, nullptr);
        ts_instance = (TS*)kmem_cache_alloc(ts_cache);
    }
    return *ts_instance;
}
