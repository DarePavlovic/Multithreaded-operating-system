#include "../h/MemoryAllocator.hpp"


Free* MemoryAllocator::freeMemHead = nullptr;
size_t MemoryAllocator::transferToNumBlock(size_t size){
    if((size)%MEM_BLOCK_SIZE==0) size = (size)/MEM_BLOCK_SIZE;
    else
        size = (size)/MEM_BLOCK_SIZE + 1;
    return size;
}
void MemoryAllocator::initialize() {
    freeMemHead = (Free*) HEAP_START_ADDR;
    freeMemHead->next = nullptr;
    freeMemHead->prev = nullptr;
    freeMemHead->size = transferToNumBlock((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(size_t));
}

void* MemoryAllocator::mem_alloc(size_t size) {
    static uint8 k=1;

    if (size <= 0)
        return nullptr;
    if(k==1){
        k=0;
        initialize();
    }

    Free* head = freeMemHead;

    //first fit alg
    for (; head != nullptr; head = head->next)
        if (head->size >= size)break;

    if (head == nullptr)
        return nullptr;

    size_t remainingSize = head->size - size;
    if (remainingSize > 0) {

        //ima ostatak prostora od alociranog bloka
        Free* newBlk = (Free*) ((char*)head + (size+sizeof(size_t))*MEM_BLOCK_SIZE);
        if(head->next) head->next->prev = newBlk;
        if (head->prev) head->prev->next = newBlk;
        else freeMemHead = newBlk;
        newBlk->next = head->next;
        newBlk->prev = head->prev;
        newBlk->size = remainingSize;//skaliraana na mem_block_size
    }
    else{
        //nije ostalo prostora, uvezi na sledeci
        if(head->prev) {
            head->prev->next = head->next;
            if(head->next)
                head->next->prev = head->prev;
        }
        else {freeMemHead = head->next; head->next->prev = nullptr;}

    }
    head->next = nullptr;
    head->prev = nullptr;
    head->size = size;
    return (void*)((char*)head+MEM_BLOCK_SIZE);

}

int MemoryAllocator::mem_free(void *ptr) {
    Free* cur = nullptr;
    ptr = (void*)((char*)ptr-MEM_BLOCK_SIZE);
    size_t size = ((Free*)ptr)->size;

    if((char*)ptr<(char*)HEAP_START_ADDR || (char*)ptr+size*MEM_BLOCK_SIZE>(char*)HEAP_END_ADDR){

        return -1;
    }

    if((char*)ptr < (char*)freeMemHead){
        cur = (Free*)ptr;
        if((char*)cur+size*MEM_BLOCK_SIZE==(char*)freeMemHead){     //slucaj da mogu da se nadovezem sa freeMemHead-om

            size+=freeMemHead->size;
            freeMemHead->next->prev = cur;
            cur->next = freeMemHead->next;
            cur->prev = nullptr;
            freeMemHead = cur;
            freeMemHead->size = size;
        }
        else {
            cur->size = size;
            cur->next = freeMemHead;
            cur->prev = nullptr;
            freeMemHead->prev = cur;
            freeMemHead = cur;
        }
        return 0;
    }
    else{
        for(cur = freeMemHead; cur->next!=nullptr && (char*)ptr>(char*)cur->next; cur = cur->next);//prolazi kroz for petlju sve dok se ne nadje unutar opsega
        //provera da li se nalazi posle mene slobodan blok
        Free* sled = cur->next;
        Free* blk = (Free*)ptr;
        //uvezem u listu
        blk->prev = cur;
        blk->next = cur->next;
        sled->prev = blk;
        cur->next = blk;
        blk->size = size;

        //provera da li se nalazi posle mene slobodan blok
        if((char*)ptr+size*MEM_BLOCK_SIZE==(char*)sled){
            size+=sled->size;
            blk->next = sled->next;
            if(sled->next) sled->next->prev = blk;

            blk->size = size;
        }
        //provera da li se nalazi pre mene slobodan blok
        if((char*)cur+cur->size*MEM_BLOCK_SIZE==(char*)ptr){

            cur->size +=size;
            cur->next = blk->next;
            if(blk->next) blk->next->prev = cur;
        }
        return 0;
    }


}