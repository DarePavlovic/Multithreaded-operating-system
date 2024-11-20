#include "printing.hpp"
#include "../h/syscall_c.hpp"

sem_t globSem;
static void workerBodyA(void* arg) {
    for (uint64 i = 0; i < 5; i++) {
        int tmp = getThreadId();
        printString("ThreadId: "); printInt(tmp); printString(" \n");
//        for (uint64 j = 0; j < 10000; j++) {
//            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
//
//        }
        thread_dispatch();
    }
    sem_signal(globSem);
}



void setMaximumThread(){
    thread_t threads[20];
    sem_open(&globSem,0);
    SetMaxThreads();
    for(int i=0;i<20;i++){
        thread_create(&threads[i], workerBodyA, nullptr);
    }

    thread_dispatch();
    for(int i=0;i<20;i++)
        sem_wait(globSem);

    printString("E zavrsio zadatak!\n");
    sem_close(globSem);
}