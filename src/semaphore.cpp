#include "../h/semaphore.hpp"

#include "../h/TCB.hpp"

kmem_cache_t* MySemaphore::semaphore_cache = nullptr;

int MySemaphore::sem_open(MySemaphore **handle, uint64 init) {
    auto* sem = (MySemaphore*)kmem_cache_alloc(get_sem_cache());
    sem->val = (int)init;
    *handle = sem;
    return 0;
}

int MySemaphore::sem_close(MySemaphore* handle){
    // deblokiraj sve niti
    TCB* tmp = handle->head;
    while(tmp){
        tmp = handle->get_from_blocked();
        if(tmp)Scheduler::getInstance().put(tmp);
    }
    // indikator za wait na true
    handle->set_indicator(true);
//    kmem_cache_free(get_sem_cache(), handle);
    return 0;
}

int MySemaphore::sem_wait(MySemaphore *id) {
    id->set_val(id->get_val() - 1);
    if( id->get_val() < 0)id->block();
    if(!id->get_indicator())return 0;
    else return -1;
}

int MySemaphore::sem_signal(MySemaphore *id) {
    id->set_val(id->get_val() + 1);
    if( id->get_val() <= 0)id->unblock();
    if(!id->get_indicator())return 0;
    else return -1;
}

MySemaphore::MySemaphore(uint64 init) {
    val = init;
    head = tail = nullptr;
    indicator = false;
}

TCB* MySemaphore::get_from_blocked() {
    if(head){
        TCB* tmp = head;
        head = head->get_next_blocked();
        if(!head)tail = nullptr;
        tmp->set_next_blocked(nullptr);
        return tmp;
    }
    return nullptr;
}

void MySemaphore::put_in_blocked(TCB *tcb) {
    if(!head)head = tcb;
    else tail->set_next_blocked(tcb);
    tail = tcb;
}

void MySemaphore::block() {
    TCB* old = TCB::running;
    put_in_blocked(old);
    TCB::yield();
}

void MySemaphore::unblock() {
    TCB* tmp = get_from_blocked();
    if(tmp)Scheduler::getInstance().put(tmp);
}

kmem_cache_t * &MySemaphore::get_sem_cache() {
    if(!semaphore_cache){
        semaphore_cache = kmem_cache_create("semaphore_cache", sizeof(MySemaphore), &semaphore_setup, &semaphore_destroy);
    }
    return semaphore_cache;
}

void MySemaphore::semaphore_setup(void *mySemaphore) {
    MySemaphore* sem = (MySemaphore*)mySemaphore;
    sem->head = sem->tail = nullptr;
    sem->indicator = false;

}

void MySemaphore::semaphore_destroy(void *mySemaphore) {
    MySemaphore* sem = (MySemaphore*)mySemaphore;
    sem_close(sem);
}

