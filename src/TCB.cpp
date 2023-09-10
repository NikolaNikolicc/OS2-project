#include "../h/TCB.hpp"
#include "../h/riscv.hpp"

TCB* TCB::running = nullptr;
TCB* TCB::idle = nullptr;
uint64 TCB::time_slice_counter = 0;
kmem_cache_t* TCB::tcb_cache = nullptr;
uint64 TCB::ID = 0;

int TCB::thread_create(TCB **handle,
                       void (*start_routine)(void *),
                       void *arg,
                       void* stack_space,
                       bool flag
) {
//    size_t size_of_block_for_tcb = (sizeof(TCB) + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
//    TCB* tmp = (TCB*)MemoryAllocator::getInstance().memory_alloc(size_of_block_for_tcb);
    TCB* tmp = (TCB*) kmem_cache_alloc(get_tcb_cache());
    if(tmp)tmp->TCB_setup(start_routine, arg, stack_space, flag);
    *handle = tmp;
    if (tmp && start_routine != nullptr && tmp != TCB::idle && flag) {
        Scheduler::getInstance().put(tmp);
    }
    if(*handle) return 0;
    else return -1;
}

int TCB::thread_exit() {
    running->set_finished(true);
    TCB::thread_dispatch();
    // do ovog dela nece nikad doci jer thread_dispatch nece nit koju gasimo staviti u scheduler
    return -1;
}

void TCB::thread_dispatch() {
//    Scheduler::printScheduler();
    TCB * old = running;
    running = Scheduler::getInstance().get();
    if (!old->is_finished()) {
        Scheduler::getInstance().put(old);
    }
    else{
        TCB::operator delete(old);
    }
//    TCB::time_slice_counter = 0;
    TCB::context_switch(&old->context, &running->context);
}

void TCB::thread_wrapper() {
    Riscv::popSppSpie();
    running->body(running->argument);
    thread_exit();
}

int TCB::time_sleep(uint64 time) {

    running->set_time_sleep(time);
    TS::getInstance().put(running);
    TCB::yield();
    return 0;
}

void TCB::yield() {
    TCB * old = running;
    running = Scheduler::getInstance().get();
    TCB::time_slice_counter = 0;
    TCB::context_switch(&old->context, &running->context);
}

void TCB::TCB_setup(TCB::Body body_init, void *arg, void *stack_space, bool b) {
    body = body_init;
    argument = arg;
    stack = (uint64*)stack_space;
    context.ra = (uint64) &thread_wrapper;
    context.sp = stack_space != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE / sizeof(uint64)] : 0;
    finished = false;
    next_scheduler = nullptr;
    next_sleep = nullptr;
    next_blocked = nullptr;
    time_slice = DEFAULT_TIME_SLICE;
    sleep = 0;
    id = ID++;
    flag = b;
    periodic = false;
    next_period = nullptr;
}

kmem_cache_t* &TCB::get_tcb_cache() {
    if(!tcb_cache){
        tcb_cache = (kmem_cache_t*) kmem_cache_create("tcb_cache", sizeof(TCB), nullptr, &tcb_destroy);
    }
    return tcb_cache;
}

void TCB::tcb_destroy(void *MyTCB) {
    TCB* tcb = (TCB*)MyTCB;
    if(tcb->stack)kfree(tcb->stack);
}


