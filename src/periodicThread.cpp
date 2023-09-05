#include "../h/periodic_threads.hpp"
#include "../h/TCB.hpp"

TCB* periodicThread::head = nullptr;
TCB* periodicThread::tail = nullptr;

void periodicThread::put(TCB *thread) {
    if(!head)head = thread;
    else tail->set_next_period(thread); // tail->next_period = thread;
    tail = thread;
}

TCB *periodicThread::get() {
    if(!head)return nullptr;
    TCB* tmp = head;
    head = head->get_next_period(); // head = head->next_period
    tmp->set_next_period(nullptr);
    if(!head)tail = nullptr;
    return tmp;
}

