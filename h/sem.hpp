#ifndef sem_hpp
#define sem_hpp

#include"queue.hpp"
#include "tcb.hpp"
class Sem
{
public:
    Sem(int init=1):val(init),closed(false){
        blocked = create_queue();
    };
    int wait();
    int signal();
    int try_wait();
    int wait_prior(int id);
    static Sem* semOpen(int i);
    int semClose();
    int value() const{return val;}
protected:
    void block();
    void block_prior(int id);
    void unblock();
private:
    int val;
    bool closed;
    queue* blocked;
};


#endif