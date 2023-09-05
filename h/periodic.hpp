#ifndef _periodic_hpp_
#define _periodic_hpp_

#include "../h/syscall_cpp.hpp"


class Periodic: public PeriodicThread{
public:
    Periodic(void(*func)(void*), void* arg, uint64 period ): PeriodicThread(period){
        function = func;
        argument = arg;
    }
protected:
    void periodicActivation() override{
        function(argument);
    }

    void run() override{
        while(this->flag_stop){
            periodicActivation();
            time_sleep(this->time);
        }

    }

private:
    void* argument;
    void (*function)(void*);
};

#endif