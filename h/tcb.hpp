#ifndef tcb_hpp
#define tcb_hpp

#include "scheduler.hpp"
#include "../lib/hw.h"
#include "syscall_cpp.hpp"
class Semaphore;
class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    bool isSemClosed() const { return sem_closed; }

    void setSemClosed(bool semClosed) { sem_closed = semClosed;}

    uint64 getMemBlockCnt() {return numOfBlocks;}

    bool isBlocked() const { return blocked; }

    void setBlocked(bool blocked) {TCB::blocked = blocked;}


    using Body = void (*)(void*);

    const uint64 &getTimeSlice() const  { return timeSlice;}

    //static void blockTCB();    //predaja korutine procesoru, cuvamo kontekst procesora
    static void dispatch();     //vrsi promenu kontektsta
    static int thread_exit();   //brise nit
    static void thread_join(TCB* handle);   //join niti
    static TCB* createThread(Body body, void* arg, void* stack_space, TCB* parnet);
    static int getThreadId();
    static void setJoin();
    static void setMaximumThreads(int i);
    static char* getMessage();
    void putMessage(char* message);
    static TCB *running;
    static int ID;
    static Semaphore* semMaxThreads;
private:
    explicit TCB(Body body, void* arg1, uint64* stack_space, uint64 timeSlice, TCB* parnt) :
            body(body),
            arg(arg1),
            stack(stack_space),     //inicijalizacija stack-a
            context({ (uint64) &threadWrapper,                  //nit koja moze odma da krene da izvrsava svoje telo
                     stack != nullptr ? (uint64) &stack_space[STACK_SIZE] : 0     //stack moze da bude prazan, tj pokazuje na poslednju lokaciju
                    }),                                                     //na kojoj je kreiran, pocinje sa najvise i smanjuje se kako se stavljaju na njega
            timeSlice(timeSlice),
            finished(false),
            sem_closed(false),
            blocked(false),
            idThread(++ID),
            parent(parnt!=nullptr?parnt: nullptr),
            waitingForChildred(0),
            flagMaxThreads(false),
            numOfBlocks(0),
            pingFlag(false),
            message(nullptr)
    {
        if(running==nullptr){
            running=this;
        }
        if (body != nullptr) { Scheduler::put(this); }
        if(parent!= nullptr){
            parent->waitingForChildred++;
            spaceAvail = new Semaphore(1);
            itemAvail = new Semaphore(0);
        }
    }
    //probam nesto


    struct Context
    {
        uint64 ra;      //dokle je kontrola toka stigla, tj mesto na koje korutina treba da se radi, odnosno pc
        uint64 sp;      //dokle su stavljeni podaci na stek nemamo i zato ga cuvamo
    };

    Body body;          //nestaticki clan control bloka, tj telo
    void* arg;
    uint64 *stack;      //pokazivac na stek     ps. ostale registre cuvamo na ovom steku
    Context context;    //kontekst koji cuvamo za korutinu
    uint64 timeSlice;
    bool finished;      //da li je ta nit gotova
    bool sem_closed;
    bool blocked;
    int idThread;
    TCB* parent;
    int waitingForChildred;
    bool flagMaxThreads;
    uint64 numOfBlocks;
    bool pingFlag;
    char* message;
    Semaphore* spaceAvail;
    Semaphore* itemAvail;


    friend class Riscv;
    static void threadWrapper();
    //funkcija yield je nazvana contextSwitch i obradjena u asm
    static void contextSwitch(Context *oldContext, Context *runningContext);



    static uint64 timeSliceCounter;
    static uint64 constexpr TIME_SLICE = DEFAULT_TIME_SLICE;
    static uint64 constexpr STACK_SIZE = DEFAULT_STACK_SIZE;
};
#endif