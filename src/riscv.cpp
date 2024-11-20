#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/sem.hpp"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"
#include "../test/printing.hpp"
//#include "../lib/mem.h"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");  //jedini nacin je upisom u kontrolni registar
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("sret");   //sret ce vratiti tamo gde je reklo sepc, a to je nit koja je ranije izgubila procesor
}

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();

    if(scause == 0x0000000000000008UL || scause == 0x0000000000000009UL){
        uint64 volatile sepc = r_sepc() + 4;    //sepc prilikom ecall dobije vrednost same ecall instrukcije i zato radimo +4

        uint64 volatile sstatus = r_sstatus();  //uzimamo njegov statusni registar
        size_t op_code;
        __asm__ volatile("mv %[op], a0":[op]"=r"(op_code));


        switch (op_code) {
            //mem_alloc op code
            case 0x1: {
                size_t size;
                __asm__ volatile("mv %[size], a1":[size]"=r"(size));
                //size_t volatile size1 = MemoryAllocator::transferToNumBlock(size);
                MemoryAllocator::mem_alloc(size + 1);
                if(TCB::running!= nullptr)
                    TCB::running->numOfBlocks+=size;
                break;
            }
            //mem_free op code
            case 0x2: {
                void *pt;
                __asm__ volatile("mv %[ptr], a1":[ptr]"=r"(pt));
                MemoryAllocator::mem_free(pt);

                break;
            }
            //thread_create op_code
            case 0x11:{         //thread_create
                thread_t* handle;
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
                void(*start_routine)(void*);
                __asm__ volatile("mv %[body], a2":[body]"=r"(start_routine));
                void* arg;
                __asm__ volatile("mv %[arg], a3":[arg]"=r"(arg));
                void* stack;
                __asm__ volatile("mv %[stack], a6":[stack]"=r"(stack));

                int s=0;
                if (handle == nullptr)
                    s = -1;
                else {
                    *handle = TCB::createThread(start_routine, arg,(void*) stack, nullptr);

                    if(*handle==nullptr)
                        s=-1;
                }
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
                break;
            }
            //thread_exit op_code
            case 0x12:{
                //pozvati thread_exit tipa int
                int k = TCB::thread_exit();
                __asm__ volatile("mv a0, %[p]"::[p]"r"(k));
                break;
            }
            //thread_dispatch op_code
            case 0x13:{
                TCB::dispatch();
                break;
            }
            case 0x14:{     //thread_join
                thread_t handle;
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
                TCB::thread_join(handle);
                break;
            }
            case 0x15:{
                thread_t* handle;
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
                void(*start_routine)(void*);
                __asm__ volatile("mv %[body], a2":[body]"=r"(start_routine));
                void* arg;
                __asm__ volatile("mv %[arg], a3":[arg]"=r"(arg));
                void* stack;
                __asm__ volatile("mv %[stack], a6":[stack]"=r"(stack));
                thread_t* parent;
                __asm__ volatile("mv %[pare], a7":[pare]"=r"(parent));
                int s=0;
                if (handle == nullptr)
                    s = -1;
                else {
                    *handle = TCB::createThread(start_routine, arg,(void*) stack, *parent);

                    if(*handle==nullptr)
                        s=-1;
                }
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
                break;
            }
            case 0x16:{
                TCB::setJoin();
                break;
            }
            case 0x17:{
                //getThreadId
                int q = TCB::getThreadId();
                TCB::dispatch();
                __asm__ volatile("mv a0, %[p]"::[p]"r"(q));
                break;
            }
            case 0x18:{     //setMaxThread
                int num;
                __asm__ volatile("mv %[id], a1":[id]"=r"(num));
                TCB::setMaximumThreads(num);
                break;
            }
            case 0x19:{
                TCB *handle;
                __asm__ volatile("mv %[id], a1":[id]"=r"(handle));
                handle->pingFlag=true;
                break;
            }
            case 0x21:{     //sem_open
                sem_t* handle;
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
                unsigned init;
                __asm__ volatile("mv %[init], a2":[init]"=r"(init));

                int s=0;
                if (handle == nullptr)
                    s = -1;
                else {
                    *handle = Sem::semOpen((int)init);
                    if(*handle==nullptr)
                        s=-1;
                }
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
                break;
            }
            case 0x22:{     //sem_close
                sem_t handle;
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));

                int s=0;
                if (handle == nullptr)
                    s = -1;
                else {
                    s=handle->semClose();
                }
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
                break;
            }
            case 0x23:{     //sem_wait
                sem_t id;
                __asm__ volatile("mv %[id], a1":[id]"=r"(id));

                int s=0;
                if (id == nullptr)
                    s = -1;
                else {
                    s = id->wait();
                }
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
                break;
            }
            case 0x24:{     //sem_signal
                sem_t id;
                __asm__ volatile("mv %[id], a1":[id]"=r"(id));

                int s=0;
                if (id == nullptr)
                    s = -1;
                else {
                    s = id->signal();
                }
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
                break;
            }
            case 0x25:{     //sem_try_wait
                sem_t id;
                __asm__ volatile("mv %[id], a1":[id]"=r"(id));

                int s=0;
                if (id == nullptr)
                    s = -1;
                else {
                    s = id->try_wait();
                }
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
                break;
            }
            case 0x26:{     //sem_waitPrior
                sem_t handle;
                __asm__ volatile("mv %[handle], a1":[handle]"=r"(handle));
                unsigned id;
                __asm__ volatile("mv %[idT], a2":[idT]"=r"(id));

                int s=0;
                if (handle == nullptr)
                    s = -1;
                else {
                    s = handle->wait_prior(id);
                }
                __asm__ volatile("mv a0, %[p]"::[p]"r"(s));
                break;
            }
            case 0x41: {    //getc

                char c = __getc();
                __asm__ volatile("mv a0, %[p]"::[p]"r"(c));
                break;
            }
            case 0x42:{     //putc
                char c;
                __asm__ volatile("mv %[c], a1":[c]"=r"(c));
                __putc(c);
                break;
            }

        }
        w_sstatus(sstatus);
        w_sepc(sepc);   //ono sto se nalazi na steku treba da bude restaurirano
    }
    else if(scause == 0x8000000000000001UL){
    // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
        TCB::timeSliceCounter++;        //odnosi se na running nit
    //    if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    //    {
    //        uint64 volatile sepc = r_sepc();    //povratna adresa iz prekidne rutine
    //        uint64 volatile sstatus = r_sstatus();
    //        TCB::timeSliceCounter = 0;
    //        TCB::dispatch();        //promeni se kontekst
    //        w_sstatus(sstatus);     //vrati se statusni registar ranije ucitane niti
    //        w_sepc(sepc);           //vratimo ranije ucitanu nit
    //    }
    }
    else if(scause == 0x8000000000000009UL){
        console_handler();
    }
    else
    {
        // unexpected trap cause
        uint64 sepc = r_sepc();     //DODATO
        printString("GRESKA! SCAUSE: ");
        printInt(scause);
        printString(", SEPC: ");
        printInt(sepc);
        __putc('\n');
        while(true);
    }
}



