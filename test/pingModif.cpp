#include "pingModif.hpp"
#include "printing.hpp"
#include "../h/syscall_cpp.hpp"
void fja1(void*){
    for(int i=0; i < 5; i++){
        void* ptr = mem_alloc(640);

        if(ptr){}
    }
    while(true){thread_dispatch();}
}

void pingMod(){
    Thread* t1 = new Thread(fja1,nullptr);
    t1->start();
    t1->ping();
    for(int i = 0; i < 20000; i++){
        for(int j = 0; j < 20000; j++);
    }
    Thread::dispatch();
    t1->ping();
    Thread::dispatch();
}