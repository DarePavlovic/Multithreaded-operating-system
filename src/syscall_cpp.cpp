#include "../h/syscall_cpp.hpp"
#include "../test/printing.hpp"
//memory allocator
void* operator new(size_t n){
    return mem_alloc(n);
}

void* operator new[](size_t n){
    return mem_alloc(n);
}

void operator delete(void *p){
    mem_free(p);
}

void operator delete[](void *p){
    mem_free(p);
}
//niti

int Thread::start (){
    int k;
    k = thread_create(&this->myHandle,body, arg);//ove video
    return k;
}
//void Thread::join(){
//    thread_join(myHandle);
//}
void Thread::dispatch(){
    thread_dispatch();
}
int Thread::sleep (time_t time){
    return 0;
}

Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
}

Thread::~Thread() {
    this->body = nullptr;
    this->arg = nullptr;
    myHandle->setFinished(true);
    delete myHandle;
}
Thread::Thread() {
    body = thread_wrapper;
    arg = this;
}

void Thread::thread_wrapper(void* handle) {
    ((Thread*)handle)->run();
}

void Thread::ping() {
    ::ping(myHandle);
}

Semaphore::Semaphore(unsigned int init) {
    turnFlag=false;
    owners = nullptr;
    sem_open(&myHandle, init);
}
int Semaphore::wait(){

    if(owners!= nullptr){
        RedOwner* a= nullptr;
        bool ownersFlag = false;
        int id = getThreadId();
        for(a = owners; a;a=a->next){
            if(a->owner==id){
                ownersFlag=true;
                printString("Cekam na semaforu id:");
                printInt(id);
                printString(" \n");
                break;
            }
        }if(ownersFlag){
            if (turnFlag) {
                //int id = getThreadId();
                printString("Wait zove: ");
                printInt(id);
                printString("\n");
                return sem_wait_prior(myHandle, id);
            } else {
                return sem_wait(myHandle);
            }
        }
        else return 0;

    }
    else{
        if (turnFlag) {
            int id = getThreadId();
            printString("Wait zove: ");
            printInt(id);
            printString("\n");
            return sem_wait_prior(myHandle, id);
        } else {
            return sem_wait(myHandle);
        }
    }
}
int Semaphore::signal() {

    if (owners != nullptr) {
        RedOwner *a = nullptr;
        bool ownersFlag = false;
        int id = getThreadId();
        for (a = owners; a; a = a->next) {
            if (a->owner == id) {
                ownersFlag = true;
                printString("Signa na semaforu id:");
                printInt(id);
                printString(" \n");
                break;
            }
        }
        if (turnFlag) {
            //int id = getThreadId();
            printString("Signal zove: ");
            printInt(id);
            printString("\n");
        }
        if(ownersFlag)
            return sem_signal(myHandle);
        else
            return 0;
    }
    else {
        if (turnFlag) {
            int id = getThreadId();
            printString("Signal zove: ");
            printInt(id);
            printString("\n");
        }
        return sem_signal(myHandle);
    }
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}

void Semaphore::turnOnPriorities() {
    turnFlag=true;
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
    delete myHandle;
}

void Semaphore::addOwner(){
    RedOwner* newOwner = (RedOwner*) mem_alloc(sizeof(RedOwner*));
    int id = getThreadId();
    newOwner->owner = id;
    newOwner->next = nullptr;
    if(owners== nullptr){
        owners=newOwner;
    }
    else{
        RedOwner* a;
        for(a = owners; a->next!=nullptr;a=a->next){
            if(a->owner==id){
                printString("Vec postoji ovakav owner u listi!\n");
                break;
            }
        }
        a->next = newOwner;
    }
};
void Semaphore::removeOwner(int id){
    RedOwner* a ;
    RedOwner* prev=nullptr;
    for(a = owners;a;prev = a, a=a->next){
        if(a->owner==id){
            if(a->next) prev->next = a->next;
            else {
                prev->next= nullptr;
            }
            mem_free(a);
        }
        else{
            continue;
        }
    }

}


void PeriodicThread::terminate() {

}

PeriodicThread::PeriodicThread(time_t period) {
    this->period=period;
}


//konzola
char Console::getc (){
    return ::getc();
}

void Console::putc (char c){
    ::putc(c);
}