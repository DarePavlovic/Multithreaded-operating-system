
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"
TCB *TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;
int TCB::ID=0;
Semaphore* TCB::semMaxThreads=nullptr;

TCB *TCB::createThread(Body body1 , void* arg, void* stack_space, TCB* parnt)
{
    return (TCB*) new TCB(body1, arg, (uint64*) stack_space, DEFAULT_TIME_SLICE,parnt);
}


int TCB::thread_exit(){
    TCB::running->setFinished(true);
    if(semMaxThreads!=nullptr){
        TCB::semMaxThreads->signal();
    }
    TCB::dispatch();
    return 0;
}

int TCB::getThreadId(){
    int id = TCB::running->idThread;
    return id;
}

void TCB::dispatch()
{

    TCB *old = running;
    if(old->pingFlag==true){
        printString("Nit ");
        printInt(old->idThread);
        printString("je pingovana!; Broj alociranih blokova je: ");
        printInt(old->numOfBlocks);
        printString("\n");
    }
    old->numOfBlocks=0;
    if(!old->isBlocked()) {
        if (!old->isFinished()) {
            Scheduler::put(old);
        }
        else{
            delete old;
        }
    }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();    //izlazak iz prekidne rutine, ali preko masinske instrukcije
    if(TCB::semMaxThreads!=nullptr){
       TCB::semMaxThreads->wait();
    }

    running->body(running->arg);
    if(running->parent!=nullptr){
        if(--running->parent->waitingForChildred==0){
            Scheduler::put(running->parent);
        }
    }

    running->setFinished(true);//gasimo nit
    ::thread_exit();
}

void TCB::thread_join(TCB *handle) {
    while(!handle->isFinished())
        TCB::dispatch();
}

void TCB::setJoin() {
    TCB *old = running;
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::setMaximumThreads(int i){
    running->flagMaxThreads=true;
    semMaxThreads = new Semaphore(i);
}

char* TCB::getMessage(){
    running->itemAvail->wait();
    char* mess = running->message;
    running->spaceAvail->signal();
    return mess;
}
void TCB::putMessage(char* message){
    spaceAvail->wait();
    this->message = message;
    itemAvail->signal();
}
