#include "../h/scheduler.hpp"
queue* Scheduler::readyCoroutineQueue;
TCB *Scheduler::get()
{
    return dequeue(readyCoroutineQueue);
}

void Scheduler::put(TCB *tcb)
{
    static int s=1;
    if(s==1){
        s=0;
        readyCoroutineQueue = create_queue();
    }
    enqueue(readyCoroutineQueue, tcb);
}

