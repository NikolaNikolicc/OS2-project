#ifndef _buddy_allocator_hpp_
#define _buddy_allocator_hpp_

#include "../lib/hw.h"
#include "../test/printing.hpp"

class BuddyAlloc{
public:

    static BuddyAlloc& getInstance(){
        static BuddyAlloc instance;
        return instance;
    }

    BuddyAlloc(const BuddyAlloc&) = delete;
    void operator=(BuddyAlloc const&) = delete;

    char* allocPortion(size_t size);
    void freePortion(char* addr);

protected:
    BuddyAlloc();
private:
    struct Node{
        size_t size; // in blocks
        Node* next;
    };

    size_t n;
    Node* arr[40];
    size_t heapStart;
    size_t heapEnd;

    void insertInArr(Node* node, size_t pos);
    Node* splitAndOrder(size_t pos, size_t size);
    static int calcParity(size_t val, const char* addr);
    bool tryToMerge(char* left, char* right, size_t entry);
    void removeFromArr(const char* addr, size_t pos);
};

#endif