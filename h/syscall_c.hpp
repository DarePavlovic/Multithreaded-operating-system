#ifndef _syscall_c
#define _syscall_c

#include "../lib/hw.h"
#include "MemoryAllocator.hpp"
#include "tcb.hpp"
#include "sem.hpp"
void* mem_alloc(size_t n);
int mem_free(void* p);

class TCB;
typedef TCB* thread_t;
int thread_create(thread_t *handle, void(*start_routine)(void*), void* arg, thread_t* parent);
int thread_create(thread_t *handle, void(*start_routine)(void*), void* arg);
int thread_exit ();
void thread_dispatch ();
void joinAll();
int getThreadId();
//void thread_join(thread_t handle);
void SetMaxThreads(int i=5);
void ping(thread_t handle);
class Sem;
typedef Sem* sem_t;

int sem_open (
        sem_t* handle,
        unsigned init
);

int sem_close (sem_t handle);
int sem_wait (sem_t id);
int sem_signal (sem_t id);
int sem_trywait(sem_t id);
int sem_wait_prior (sem_t handle, unsigned id);
const int EOF = -1;
char getc ();
void putc (char character);

typedef unsigned long time_t;
int time_sleep (time_t);
#endif