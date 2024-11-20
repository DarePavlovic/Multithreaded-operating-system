#include "../h/tcb.hpp"
#include "../h/sem.hpp"
#include "../h/riscv.hpp"
#include "../test/userMain.hpp"
sem_t glob_sem;

void funkcija(){
    userMain();
    sem_signal(glob_sem);
}



int main()
{

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    TCB* handle = nullptr;
    thread_create(&handle, nullptr, nullptr);
    sem_open(&glob_sem,0);
//    TCB* userThread = nullptr;
//    thread_create(&userThread, (void(*)(void*))funkcija, nullptr);
    funkcija();
    sem_wait(glob_sem);

    sem_close(glob_sem);
    delete handle;
    return 0;
}