#ifndef _periodic_thread_hpp_
#define _periodic_thread_hpp_

class TCB;

class periodicThread{

public:
    static periodicThread& getInstance(){
        static periodicThread instance;
        return instance;
    }

    periodicThread(const periodicThread&) = delete;
    void operator=(periodicThread const&) = delete;

    void put(TCB* thread);
    TCB* get();

    static TCB* head;
    static TCB* tail;

private:
    periodicThread(){}
};

#endif