#include "semPriorMod.hpp"
#include "printing.hpp"
#include "../h/syscall_c.hpp"

Semaphore* semP;
Semaphore* globS;
Thread* threadsPrior[50];

class UdjeIzadje : public Thread{
public:
    UdjeIzadje(){}
    void workerA(void* arg);
protected:
    void run() override{
        workerA(nullptr);
    }
};

void UdjeIzadje::workerA(void* arg){
    semP->wait();
    printString("Usao u kriticnu sekciju\n");
    for(int i=0;i<10000;i++){
        for(int j=0;j<3000;j++);
        thread_dispatch();
    }

    semP->signal();
    globS->signal();
    printString("Izasao iz kriticne sekcije\n");
}

void semPriorModif(){
    semP = new Semaphore(5);
    semP->turnOnPriorities();

    for(int i=0;i<50;i++){
        threadsPrior[i] = new UdjeIzadje();
    }
    globS = new Semaphore(0);
    for(int i=0;i<50;i++){
        threadsPrior[i]->start();
    }

    for(int i=0;i<50;i++){
        globS->wait();
    }

    delete globS;
    delete semP;

}