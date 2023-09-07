//
// Created by os on 8/12/23.

#include "../h/Buddy.h"

BuddySystem::BuddySystem(){

}

// vraca 0 u slucaju neuspesne alokacije, u slucaju uspesne vraca adresu bloka, na sizeof(size_t) ispred se nalazi avelicina alociranog bloka
void* BuddySystem::buddyAlloc(size_t size) {
    size_t position = 50;
    for(size_t i = 0; i < 40; i++){
        if(arr[i] && arr[i]->size >= size + sizeof(size_t)){
            position = splitAndOrder(i, size + sizeof(size_t));
            break;
        }
    }
    if(position == 50)return 0;
    MemNode* node = arr[position];
    arr[position] = arr[position]->next;
    node->next = nullptr;

    *((size_t*)node) = pow(position);
    return (void*)((size_t)node + sizeof(size_t));
}

void BuddySystem::buddyFree(size_t addr) {
    size_t size = *(size_t*)(addr - sizeof(size_t));
    if((void*)addr == nullptr || size == 0)return;
    size_t position = log(size);
    MemNode* newNode = (MemNode*)(addr - sizeof(size_t));
    newNode->next = nullptr;
    newNode->size = size;
    int merged = (int)insertInArray(position, (size_t)newNode);
    while(merged != -1){
        MemNode* curr = arr[position], *prev = nullptr, *next = nullptr;
        for(int i = 0; i < merged; i++){
            prev = curr;
            curr = curr->next;
            if(curr)next = curr->next;
        }
        if(merged == 0 && curr){
            next = curr->next;
        }

        if(!prev && !next){
            merged = -1;
        }
        if(prev){
            merged = tryToMerge(prev, curr, position);
        }
        if((merged != -1) && next){
            merged = tryToMerge(curr, next, position);
        }
        if(merged != -1)position++;
    }
}

// deli cvor na dva manja i ubacuje ih u red ispod, sve dok je to moguce (dok u naredni moze da stane required_size), vraca poslednji red u koji su elementi ubaceni
size_t BuddySystem::splitAndOrder(size_t position, size_t required_size) {
    size_t val = pow(position);
    while((val >> 1) >= required_size && (val >> 1) >= BLOCK_SIZE){
        MemNode* tmp = arr[position];
        arr[position] = arr[position]->next;
        tmp->next = nullptr;
        tmp->size >>= 1;

        MemNode* newNode = (MemNode*)((size_t)tmp + tmp->size);
        newNode->size = tmp->size;
        newNode->next = nullptr;

        position--;
        val >>= 1;

        insertInArray(position, (size_t)tmp);
        insertInArray(position, (size_t)newNode);
    }
    return position;
}

// vraca na kojem mestu je node ubacen u nizu arr[position]
int BuddySystem::insertInArray(size_t position, size_t addr) {
    MemNode* node = (MemNode*)addr;

    if(!arr[position]){
        arr[position] = node;
        return 0;
    }

    int cnt = 0;
    MemNode* prev = nullptr, * curr = arr[position];
    while(curr and (size_t)curr < (size_t)node){
        prev = curr;
        curr = curr->next;
        cnt++;
    }
    node->next = curr;
    if(prev)prev->next = node;
    else arr[position] = node;
    return cnt;
}

// vraca -1 ukoliko nije spojeno, ukoliko jeste vraca poziciju na kojoj je element ubacen
int BuddySystem::tryToMerge(BuddySystem::MemNode *left, BuddySystem::MemNode *right, size_t position) {
    if(left && right && ((size_t)left + left->size == (size_t)right) && (((size_t)left - buddyHeapStart) % pow(position) == 0)){
        left->size <<= 1;
        MemNode* prev = nullptr;
        for(MemNode* curr = arr[position]; curr != left; curr = curr->next){
            prev = curr;
        }
        if(prev){
            prev->next = right->next;
        }else{
            arr[position] = right->next;
        }
        right->next = nullptr;
        left->next = nullptr;
//        *(size_t*)(left - sizeof(size_t)) = left->size;
        size_t insertPosition = insertInArray(position + 1, (size_t)left);
        // nema svrhu, samo testiranje da ne bi bilo optimizacije
        left = arr[position];
        return (int)insertPosition;
    }
    return -1;
}

void BuddySystem::initBuddy() {
    buddyHeapEnd = buddyHeapStart + buddyNumOfBlocks * BLOCK_SIZE;
//    buddyHeapEnd = (size_t)HEAP_START_ADDR + ((size_t)HEAP_END_ADDR - 1 - (size_t)HEAP_START_ADDR) / 8;
    size_t deg = 0, size = 1, realSize = buddyHeapEnd - (size_t)HEAP_START_ADDR, heapStart = (size_t)HEAP_START_ADDR;

    while(size <= realSize){
        deg++;
        size <<= 1;
    }
    size >>= 1;
    deg--;

    // razdvajanje ostatka prostora
    int cnt = 0;
    size_t boundary = log(BLOCK_SIZE);
    while(heapStart < buddyHeapEnd && size >= boundary) {
        cnt++;
        if(realSize < size){
            deg--;
            size >>=1;
            continue;
        }

        MemNode *newNode = (MemNode *) heapStart;
        newNode->next = nullptr;
        newNode->size = size;
        arr[deg] = newNode;

        realSize -= size;
        heapStart += size;
        deg--;
        size >>= 1;
    }
};

//