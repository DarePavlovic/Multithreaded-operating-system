#include "../h/queue.hpp"

queue* create_queue() {
    size_t size = MemoryAllocator::transferToNumBlock(sizeof(queue));   //izracunaj broj blokova
    queue* q = (queue*)MemoryAllocator::mem_alloc(size); // mem_alloc za queue
    q->front = nullptr;
    q->rear = nullptr;
    q->size = 0;
    return q;//pokazivac na alocirani red red
}

bool is_empty(queue* q) {
    return (q->size == 0);
}

// Ubaci TCB* na kraj reda
void enqueue(queue* q, TCB* data) {
    size_t size = MemoryAllocator::transferToNumBlock(sizeof(node)); //izracunaj broj blokova
    node* new_node = (node*)MemoryAllocator::mem_alloc(size); // mem_alloc za queue
    new_node->data = data;
    new_node->next = nullptr;
    if (is_empty(q)) {
        q->front = new_node;
        q->rear = new_node;
    } else {
        q->rear->next = new_node; // postavi sledeci od poslednjeg na novi node
        q->rear = new_node; // sada je novi node poslednji
    }
    q->size++;
}

void enqueue_p(queue* q, TCB* data, int idData){

    size_t size = MemoryAllocator::transferToNumBlock(sizeof(node)); //izracunaj broj blokova
    node* new_node = (node*)MemoryAllocator::mem_alloc(size); // mem_alloc za queue
    new_node->data = data;
    new_node->id = idData;
    new_node->next = nullptr;
    if (is_empty(q)||idData<q->front->id) {
        new_node->next = q->front;
        q->front = new_node;
        if(q->rear== nullptr)
            q->rear = new_node;
    } else {
        node* current = q->front;
        while(current->next!=nullptr && current->next->id<idData){
            current = current->next;
        }
        new_node->next = current->next;
        current->next = new_node;
        if(current==q->rear){
            q->rear = new_node;
        }
        
    }
    q->size++;
}

// Izbaci TCB* sa pocetka reda
TCB* dequeue(queue* q) {
    if (is_empty(q)) {
        return nullptr;
    } else {
        node* temp = q->front; //izvlacim prvi node
        TCB* data = temp->data; //TCB* koji vracam
        q->front = temp->next; //izbacim elemenat iz reda
        MemoryAllocator::mem_free(temp); // dealociram pokazivac na trenutni/bivsi pocetak reda
        q->size--;
        return data;
    }
}
