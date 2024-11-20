#ifndef scheduler_hpp
#define scheduler_hpp
#include "queue.hpp"

class Scheduler
{
private:
    static queue* readyCoroutineQueue;

public:

    static TCB *get();

    static void put(TCB *tcb);

};
#endif