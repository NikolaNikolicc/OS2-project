#include "../h/syscall_cpp.hpp"
#include "../h/TCB.hpp"
#include "../h/semaphore.hpp"



void* operator new(size_t n) {
    return mem_alloc(n);
}

void* operator new[](size_t n) {
    return mem_alloc(n);
}

void operator delete(void* ptr) {
    mem_free(ptr);
}

void operator delete[](void* ptr) {
    mem_free(ptr);
}

Thread::Thread(void (*body)(void*), void *arg) {
    // inicijalizacija steka
    uint64 a4 = (body != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;

    // kod sistemskog poziva
    uint64 a0 = 0x11;
    // parametri
    uint64  a1, a2, a3, a5, a6, a7;
    a1 = (uint64)&myHandle;
    a2 = (uint64)body;
    a3 = (uint64)arg;
    a6 = (uint64)false;

    a5 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));

}

Thread::~Thread() {
    delete (TCB*)(myHandle);
}

int Thread::start() {
    put_in_scheduler(myHandle);
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

Thread::Thread() {
    // inicijalizacija steka
    uint64 a4 = (uint64)mem_alloc(DEFAULT_STACK_SIZE);

    // kod sistemskog poziva
    uint64 a0 = 0x11;
    // parametri
    uint64  a1, a2, a3, a5, a6, a7;
    a1 = (uint64)&myHandle;
    a2 = (uint64)&wrapper_run;
    a3 = (uint64)this;
    a6 = (uint64)false;

    a5 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));

}

void Thread::wrapper_run(void* thread) {
    ((Thread*)(thread))->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    delete (MySemaphore*)myHandle;
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

uint64 PeriodicThread::ID = 0;

PeriodicThread::PeriodicThread(time_t period) {
    time = period;
    flag_stop = true;
    set_periodic((thread_t)this);
}

void PeriodicThread::run() {
    while(flag_stop){
        periodicActivation();
        sleep(time);
    }
}
