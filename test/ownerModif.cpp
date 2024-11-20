#include "ownerModif.hpp"
#include "../h/syscall_cpp.hpp"
#include "printing.hpp"



class OwnerThread:public Thread{
public:
    OwnerThread(int idntf, Semaphore* s, Semaphore* own):idt(idntf), waitForAll(s), semOwn(own){}
    void run() override{
        int id = getThreadId();
        if(id%2==0){
            semOwn->addOwner();
        }
        if((id)%3==0){
            semOwn->removeOwner(id);
        }

        semOwn->wait();
        printString("Ovo je neki moj ispis\n");
        semOwn->signal();

        waitForAll->signal();
    }
private:
    int idt;
    Semaphore* waitForAll;
    Semaphore* semOwn;
};

void ownerMod(){
    Thread* threads[20];
    Semaphore* waitForAll = new Semaphore(0);
    Semaphore* semOwn = new Semaphore(1);
    for(int i=0;i<20;i++){
        threads[i] = new OwnerThread(i, waitForAll, semOwn);
    }
    for(int i=0;i<20;i++){
        threads[i]->start();
    }

    for(int i=0;i<20;i++){
        waitForAll->wait();
    }

}
