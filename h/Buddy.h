//
// Created by os on 8/12/23.
//

#ifndef PROJECT_BASE_V1_1_BUDDY_H
#define PROJECT_BASE_V1_1_BUDDY_H

#include "../lib/hw.h"

class BuddySystem{
public:

    void* buddyAlloc(size_t size);
    void buddyFree(size_t addr);

    static BuddySystem& getInstance(void *space = nullptr, int block_num = 0){
        static BuddySystem bs;
        if(block_num != 0 && space != nullptr){
            bs.buddyHeapStart = (size_t)space;
            bs.buddyNumOfBlocks = block_num;
        }
        return bs;
    }

    size_t getBuddyHeapEnd(){return buddyHeapEnd;}
protected:
    BuddySystem();
private:
    struct MemNode{
        MemNode* next;
        size_t size;
    };

    MemNode* arr[40];
    size_t buddyHeapStart;
    size_t buddyHeapEnd;
    size_t buddyNumOfBlocks;

    bool isInitialized = false;

    void initBuddy();
    size_t splitAndOrder(size_t position, size_t required_size);
    int insertInArray(size_t position, MemNode* node);
    int tryToMerge(MemNode* left, MemNode* right, size_t position);

    size_t static pow(size_t deg){
        size_t tmp = 1;
        for(size_t i = 0; i < deg; i++){
            tmp <<= 1;
        }
        return tmp;
    }

    size_t static log(size_t size){
        size_t deg = 0;
        while(size > 1){
            size >>= 1;
            deg++;
        }
        return deg;
    }
};

#endif //PROJECT_BASE_V1_1_BUDDY_H
