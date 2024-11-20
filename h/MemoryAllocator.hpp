#ifndef MemoryAllocator_hpp
#define MemoryAllocator_hpp
#include "../lib/hw.h"

typedef struct Free{
    size_t size;
    struct Free* next;
    struct Free* prev;
}Free;

class MemoryAllocator {
private:
    static struct Free* freeMemHead;

public:

    static void* mem_alloc(size_t size);
    static int mem_free(void* p);
    static size_t transferToNumBlock(size_t size);
    static void initialize();
};
#endif