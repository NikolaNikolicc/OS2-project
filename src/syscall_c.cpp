#include "../h/syscall_c.h"
void *mem_alloc(size_t size) {
    // prebaci u blokove i zaokruzi na gornji ceo
    size_t ssize = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;

    // kod sistemskog poziva
    uint64 a0 = 0x01;
    // priprema argumenata
    uint64 a1 = ssize;
    uint64 a2 = 0;
    uint64 a3 = 0;
    uint64 a4 = 0;
    uint64 a5 = 0;
    uint64 a6 = 0;
    uint64 a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    return abi::sys_call(reinterpret_cast<void*>(empty));
}

int mem_free(void *addr) {
    if(addr == nullptr)return 0;
    // kod sistemskog poziva
    uint64 a0 = 0x02;
    // priprema argumenata
    uint64 a1 = reinterpret_cast<uint64>(addr);
    uint64 a2 = 0;
    uint64 a3 = 0;
    uint64 a4 = 0;
    uint64 a5 = 0;
    uint64 a6 = 0;
    uint64 a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    return (uint64) abi::sys_call(reinterpret_cast<void *>(empty));
}

int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {

    // inicijalizacija steka
    void* stack = mem_alloc(DEFAULT_STACK_SIZE);
    if(stack == nullptr){
        *handle = nullptr;
        return -1;
    }
    uint64 a4 = (start_routine != nullptr) ? (uint64)stack : 0;

//    uint64 a4 = (start_routine != nullptr) ? (uint64)mem_alloc(DEFAULT_STACK_SIZE) : 0;

    // kod sistemskog poziva
    uint64 a0 = 0x11;
    // parametri
    uint64  a1, a2, a3, a5, a6, a7;
    a1 = (uint64)handle;
    a2 = (uint64)start_routine;
    a3 = (uint64)arg;
    a6 = (uint64)true;

    a5 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    return (uint64) abi::sys_call(reinterpret_cast<void *>(empty));

}

void thread_dispatch() {

    // kod sistemskog poziva
    uint64 a0 = 0x13;
    // parametri
    uint64  a1, a2, a3, a4, a5, a6, a7;

    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));

    // povratak
    return;

}

int thread_exit() {

    // kod sistemskog poziva
    uint64 a0 = 0x12;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));

//    return 0;
}

int time_sleep(time_t time) {

    if(time == 0)return 0;

    // kod sistemskog poziva
    uint64 a0 = 0x31;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)time;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));

//    return 0;
}

int sem_open(sem_t *handle, uint64 init) {
    // kod sistemskog poziva
    uint64 a0 = 0x21;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)handle;
    a2 = init;
    a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
}

int sem_close(sem_t handle) {
    // kod sistemskog poziva
    uint64 a0 = 0x22;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)handle;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
}

int sem_wait(sem_t id) {
    // kod sistemskog poziva
    uint64 a0 = 0x23;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)id;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
}

int sem_signal(sem_t id) {
    // kod sistemskog poziva
    uint64 a0 = 0x24;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)id;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    return (uint64)abi::sys_call(reinterpret_cast<void *>(empty));
}

char getc() {
    // kod sistemskog poziva
    uint64 a0 = 0x41;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    uint64 ch = (uint64)abi::sys_call(reinterpret_cast<void *>(empty));

    return ch;
}

void putc(char c) {
    // kod sistemskog poziva
    uint64 a0 = 0x42;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)c;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    return;
}

void put_in_scheduler(thread_t tcb) {
    // kod sistemskog poziva
    uint64 a0 = 0x50;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)tcb;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    return;
}

void switch_to_user() {
    // kod sistemskog poziva
    uint64 a0 = 0x60;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    return;
}

void switch_to_priviledged() {
    // kod sistemskog poziva
    uint64 a0 = 0x61;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    return;
}

void set_periodic(thread_t periodic_thread) {
    // kod sistemskog poziva
    uint64 a0 = 0x70;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)periodic_thread;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    return;
}

void kill(thread_t thread) {
    // kod sistemskog poziva
    uint64 a0 = 0x111;

    // parametri
    uint64 a1, a2, a3, a4, a5, a6, a7;
    a1 = (uint64)thread;
    a2 = a3 = a4 = a5 = a6 = a7 = 0;

    // void* pokazivac
    uint64 empty[8]= {a0, a1, a2, a3, a4, a5, a6, a7};

    // sistemski poziv
    abi::sys_call(reinterpret_cast<void *>(empty));
    return;
}
