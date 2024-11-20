#include "../h/sem.hpp"
#include "../test/printing.hpp"

Sem* Sem::semOpen(int i){
    return (Sem*) new Sem((int)i);
}
int Sem::semClose(){
    closed=true;
    while(!is_empty(blocked)){
        TCB* t = dequeue(blocked);
        t->setBlocked(false);
        Scheduler::put(t);

    }
    return 0;
}
void Sem::block(){
    TCB* old = TCB::running;
    old->setBlocked(true);
    enqueue(blocked, old);
    TCB::dispatch();
}

void Sem::block_prior(int id) {
    TCB* old = TCB::running;
    old->setBlocked(true);
    enqueue_p(blocked, old, id);
    TCB::dispatch();
}

void Sem::unblock(){
    TCB* t = dequeue(blocked);
    t->setBlocked(false);
    Scheduler::put(t);
}

int Sem::wait(){
    if(closed)return -1;

    if(--val<0) {
        Sem::block();
    }
    return 0;
}

int Sem::wait_prior(int id) {
    if(closed)return -1;
    if(--val<0){
        Sem::block_prior(id);
    }
    return 0;
}
int Sem::try_wait(){
    if(closed)return -1;

    if(--val<0) {
        return 0;
    }
    else{
        return 1;
    }
}
int Sem::signal(){
    if(closed)return -1;

    if(++val<=0) {
        Sem::unblock();
    }
    return 0;
}