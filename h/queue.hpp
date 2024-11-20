#ifndef queue_hpp
#define queue_hpp
#include "MemoryAllocator.hpp"
class TCB;
typedef struct node {
    TCB* data; // TCB* u node-u
    int id;
    struct node* next;
} node;


typedef struct queue {
    node* front; // pokazivac na pocetak reda
    node* rear; // pokazivac na kraj reda
    int size; // velicina elemenata u redu
} queue;

queue* create_queue();

bool is_empty(queue* q);

// Ubaci TCB* na kraj reda
void enqueue(queue* q, TCB* data);

void enqueue_p(queue* q, TCB* data, int idtf);

// Izbaci TCB* sa pocetka reda
TCB* dequeue(queue* q);
#endif