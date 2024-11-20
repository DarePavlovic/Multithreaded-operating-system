#include "getTreadIdModifikacija.hpp"
#include "../h/syscall_c.hpp"
#include "printing.hpp"

static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;

static void workerBodyA(void* arg) {

    for (uint64 i = 0; i < 10; i++) {
        int tmp = getThreadId();
        printString("A: "); printInt(tmp); printString(" \n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }

        }
        thread_dispatch();
    }
    printString("A finished!\n");
    finishedA = true;
}

static void workerBodyB(void* arg) {

    for (uint64 i = 0; i < 10; i++) {
        int tmp = getThreadId();
        printString("B: "); printInt(tmp); printString(" \n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }

        }
        thread_dispatch();
    }
    printString("B finished!\n");
    finishedB = true;
}

static void workerBodyC(void* arg) {

    for (uint64 i = 0; i < 10; i++) {
        int tmp = getThreadId();
        printString("B: "); printInt(tmp); printString(" \n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }

        }
        thread_dispatch();
    }
    printString("C finished!\n");
    finishedC = true;

}

void getThreadIdMod(){
    thread_t threads[3];
    thread_create(&threads[0], workerBodyA, nullptr);
    printString("ThreadA created\n");

    thread_create(&threads[1], workerBodyB, nullptr);
    printString("ThreadB created\n");

    thread_create(&threads[2], workerBodyC, nullptr);
    printString("ThreadC created\n");

    while (!(finishedA && finishedB && finishedC)) {
        thread_dispatch();
    }
}