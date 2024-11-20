#ifndef _syscall_cpp
#define _syscall_cpp

#include "syscall_c.hpp"

void* operator new (size_t size);
void operator delete (void* ptr);

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    //void join();
    static void dispatch ();
    static int sleep (time_t);
    void ping();
protected:
    Thread ();
    virtual void run () {}
private:
    TCB* myHandle;
    void (*body)(void*);
    void* arg;
    static void thread_wrapper(void*);
};
class Sem;
typedef Sem* sem_t;

struct RedOwner{
    int owner;
    RedOwner* next;
};

class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
    int tryWait();
    void turnOnPriorities();
    void addOwner();
    void removeOwner(int id);
private:
    sem_t myHandle;
    bool turnFlag;
    RedOwner* owners;
};

class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
};

class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif