#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size){

    size_t op_code = 0x1;

    __asm__ volatile("mv a1, %[size]"::[size]"r"(MemoryAllocator::transferToNumBlock(size)));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    //prenos argumenta size
    //i skok u prekidnu rutinu
    __asm__ volatile("ecall");

    void* x;
    //treba vratim pokazivac koji mi vrati syscall od mem_alloc-a
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}

int mem_free(void* ptr){

    size_t op_code=0x2;
    __asm__ volatile("mv a1, %[addr]"::[addr]"r"(ptr));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}
int thread_create(thread_t *handle, void(*start_routine)(void*), void* arg, thread_t* parent){
    thread_t* part = parent;
    __asm__ volatile("mv a7, %[paren]"::[paren]"r"(part));

    uint64* stack = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);//da ne bi bio sistemski poziv u sistemskom pozivu
    if(stack ==nullptr) return -1;
    //pripremljeni svi podaci, salji
    __asm__ volatile("mv a6, %[stack]"::[stack]"r"(stack));
    void* arg1 = arg;
    __asm__ volatile("mv a3, %[arg]"::[arg]"r"(arg1));
    TCB::Body b = start_routine;
    __asm__ volatile("mv a2, %[body]"::[body]"r"(b));
    thread_t* thandle = handle;
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(thandle));
    size_t op_code=0x15;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));


    __asm__ volatile("ecall");
    int thr;
    __asm__ volatile("mv %[x], a0":[x]"=r"(thr));
    return thr;
}

int thread_create(thread_t *handle, void(*start_routine)(void*), void* arg){
    uint64* stack = (uint64*) mem_alloc(DEFAULT_STACK_SIZE);//da ne bi bio sistemski poziv u sistemskom pozivu
    if(stack ==nullptr) return -1;
    //pripremljeni svi podaci, salji
    __asm__ volatile("mv a6, %[stack]"::[stack]"r"(stack));
    void* arg1 = arg;
    __asm__ volatile("mv a3, %[arg]"::[arg]"r"(arg1));
    TCB::Body b = start_routine;
    __asm__ volatile("mv a2, %[body]"::[body]"r"(b));
    thread_t* thandle = handle;
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(thandle));
    size_t op_code=0x11;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));


    __asm__ volatile("ecall");
    int thr;
    __asm__ volatile("mv %[x], a0":[x]"=r"(thr));
    return thr;
}


void thread_dispatch (){
    size_t op_code = 0x13;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
}

int thread_exit (){
    size_t op_code = 0x12;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}

void SetMaxThreads(int i){
    size_t op_code = 0x18;
    __asm__ volatile("mv a1, %[num]"::[num]"r"(i));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
}

void joinAll(){
    size_t op_code = 0x16;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
}



//void thread_join(thread_t handle){
//    size_t op_code=0x14;
//    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
//    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
//    __asm__ volatile("ecall");
//
//}

int sem_open (sem_t* handle, unsigned init){
    size_t op_code = 0x21;
    __asm__ volatile("mv a2, %[init]"::[init]"r"(init));
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}

int sem_close (sem_t handle){
    size_t op_code = 0x22;
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}
int sem_wait (sem_t id){
    size_t op_code = 0x23;
    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}
int sem_signal(sem_t id){
    size_t op_code = 0x24;
    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}

int sem_trywait(sem_t id){
    size_t op_code = 0x25;
    __asm__ volatile("mv a1, %[id]"::[id]"r"(id));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}

int sem_wait_prior (sem_t handle, unsigned id){
    size_t op_code = 0x26;
    __asm__ volatile("mv a2, %[init]"::[init]"r"(id));
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    int x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}

char getc (){
    size_t op_code = 0x41;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    char x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}

void putc (char character){
    size_t op_code = 0x42;
    __asm__ volatile("mv a1, %[ch]"::[ch]"r"(character));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    //__putc(c);
}
int time_sleep (time_t){
    return 0;
}


int getThreadId(){
    size_t op_code = 0x17;
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");
    char x;
    __asm__ volatile("mv %[x], a0":[x]"=r"(x));
    return x;
}

void ping(thread_t handle1){
    size_t op_code=0x19;
    __asm__ volatile("mv a1, %[handle]"::[handle]"r"(handle1));
    __asm__ volatile("mv a0, %[op]"::[op]"r"(op_code));
    __asm__ volatile("ecall");

}