#ifndef List_hpp
#define List_hpp

#include "MemoryAllocator.hpp"
//#include "syscall_cpp.hpp"
//#include "../lib/mem.h"
template<typename T>
class List
{
private:
    struct Elem
    {
        T *data;
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}

    List(const List<T> &) = delete;

    List<T> &operator=(const List<T> &) = delete;

    void addFirst(T *data)
    {
        size_t numOfBlocks = MemoryAllocator::transferToNumBlock(sizeof(Elem));
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
        elem->data=data;
        elem->next = head;
        //Elem *elem = new Elem(data, head);

        head = elem;
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        size_t numOfBlocks = MemoryAllocator::transferToNumBlock(sizeof(Elem));
        Elem *elem = (Elem*)MemoryAllocator::mem_alloc(numOfBlocks);
        elem->data=data;
        elem->next = head;
        //Elem *elem = new Elem(data, head);
        if (tail)
        {
            tail->next = elem;
            tail = elem;
        } else
        {
            head = tail = elem;
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }

        T *ret = elem->data;
        MemoryAllocator::mem_free(elem);
        //__mem_free(elem);
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
        return head->data;
    }

    T *removeLast()
    {
        if (!head) { return 0; }

        Elem *prev = 0;
        for (Elem *curr = head; curr && curr != tail; curr = curr->next)
        {
            prev = curr;
        }

        Elem *elem = tail;
        if (prev) { prev->next = 0; }
        else { head = 0; }
        tail = prev;


        T *ret = elem->data;
        MemoryAllocator::mem_free(elem);
        //__mem_free(elem);
        return ret;
    }

    T *peekLast()
    {
        if (!tail) { return 0; }
        return tail->data;
    }
};

#endif