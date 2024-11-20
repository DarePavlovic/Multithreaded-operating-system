#include "joinAllModif.hpp"
#include "../h/syscall_c.hpp"
#include "printing.hpp"

static volatile bool finishedA = false;

thread_t threads[15];

static void workerBodyC(void* arg) {
    printString("C created\n");

    for (uint64 i = 0; i < 10; i++) {

        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("C finished!\n");
    thread_dispatch();
}

static void workerBodyB(void* arg) {
    printString("B created\n");
    int idT = *(int*)arg;
    thread_create(&threads[idT*3-1], workerBodyC, nullptr, &threads[idT]);
    thread_create(&threads[idT*3], workerBodyC, nullptr, &threads[idT]);
    thread_create(&threads[idT*3+1], workerBodyC, nullptr, &threads[idT]);
    joinAll();
    for (uint64 i = 0; i < 10; i++) {

        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("B finished!\n");
}

static void workerBodyA(void* arg) {

    printString("A created\n");
    int idT4 = 1;
    thread_create(&threads[idT4], workerBodyC, &idT4, &threads[0]);
    int idT1 = 2;
    thread_create(&threads[idT1], workerBodyB, &idT1, &threads[0]);
    int idT2=3;
    thread_create(&threads[idT2], workerBodyB, &idT2, &threads[0]);
    int idT3=4;
    thread_create(&threads[idT3], workerBodyB, &idT3, &threads[0]);
    joinAll();

    for (uint64 i = 0; i < 10; i++) {

        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("A finished!\n");
    finishedA = true;
}

void joinAllModif(){

    thread_create(&threads[0], workerBodyA, nullptr);
    printString("ThreadA created\n");

    while (!(finishedA)) {
        thread_dispatch();
    }
}