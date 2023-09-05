#ifndef _syscall_cpp_hpp_
#define _syscall_cpp_hpp_

#include "../h/syscall_c.h"



void* operator new(size_t n);
void* operator new[](size_t n);
void operator delete(void* ptr);
void operator delete[](void* ptr);



class Thread {
public:
    Thread(void (*body)(void*), void* arg);
    virtual ~Thread();



    int start();



    static void dispatch();
    static int sleep(time_t time);



protected:
    Thread();
    virtual void run() {}



private:
    static void wrapper_run(void* thread);



    thread_t myHandle;
};



class Semaphore {
public:
    explicit Semaphore(unsigned init = 1);
    virtual ~Semaphore();



    int wait();
    int signal();



private:
    sem_t myHandle;
};



class PeriodicThread : public Thread {
public:
    void stop(){flag_stop = false;}
//    uint64 getId()const{ id; }
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation(){}
    virtual void run() override;
    time_t time;
    bool flag_stop;
private:
    static uint64 ID;
    uint64 id = ID++;

};

class Console {
public:
    static char getc();
    static void putc(char c);
};

#endif