#include "../h/MemoryAllocator.hpp"

void* MemoryAllocator::memory_alloc (size_t size){
    for(FreeMem* cur = fmem_head; cur != nullptr; cur = cur->next   ){ //  cur =  (FreeMem*)(*((char*)cur + 1))

//        printString("velicina u blokovima: ");
//        printInteger(this->fmem_head->size);
//        printString("\n");

        // <= stavljamo jer zelimo size + 1 blok u tom dodatnom cuvam podatak o broju blokova
        if(*((size_t*)cur) <= size) continue;

        // slucaj da imamo jedan blok viska, dodajemo ga jer ne mozemo nista sa njim (trebaju min 2)
        if(cur->size == size + 2){
            // ulancavanje narednog i prethodnog cvora
            if (cur->prev) {
                cur->prev->next = cur->next;
                if(cur->next)cur->next->prev = cur->prev;
            }
            else {
                fmem_head = cur->next;
                if(cur->next)cur->next->prev = nullptr;
            }

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = size + 1;
        }
        else {
            FreeMem *newfrgm = (FreeMem *) ((char *) cur + (size + 1) * MEM_BLOCK_SIZE);

            // ubacivanje ostatka adresa u evidenciju slobodnih adresa
            if (cur->prev) cur->prev->next = newfrgm;
            else fmem_head = newfrgm;
            if (cur->next)cur->next->prev = newfrgm;
            newfrgm->prev = cur->prev;
            newfrgm->next = cur->next;
            newfrgm->size = cur->size - size - 1;

            // u cur + 0 upisujemo broj blokova, a cur + 1 vracamo kao adresu
            *((char*)cur) = size;
        }
        return (void*)((char*)cur + MEM_BLOCK_SIZE);
    }
    return nullptr;
}

int MemoryAllocator::memory_free(void * add) {
    // u slucaju prosledjenog nullptr
    if(add == nullptr)return 0;
    // dalja obrada
    FreeMem* cur = nullptr;
    char* addr = (char*)add;
    size_t size = *(addr - MEM_BLOCK_SIZE);
    // u slucaju da smo prosledili adresu van heap - a
    if(addr < (char*)HEAP_START_ADDR || addr >= (char*)HEAP_END_ADDR)return -1; // address out of bounds exception
    if(!fmem_head || addr < (char*)fmem_head)
        cur = nullptr;
    else
        for(cur = fmem_head; cur->next != nullptr && addr > (char*)(cur->next); cur = cur->next);

    // Try to append it to the previous free segment cur
    if(cur && (char*)cur + (cur->size + 1) * MEM_BLOCK_SIZE == addr){
        cur->size += size + 1; // dodajemo jos jedan zbog bloka za evidenciju
        // Try to join cur with the next free segment
        // ovde je ranije stajalo (cur->size + 1) * MEM_BLOCK_SIZE ali je +1 obrisan jer je taj prostor vec oslobodjen pa gadjamo najnormalnije adresu
        if(cur->next && (char*)cur + cur->size * MEM_BLOCK_SIZE == (char*)(cur->next)){
            // Remove the cur->next segment
            cur->size += cur->next->size; // dodajemo jos jedan zbog bloka za evidenciju
            cur->next = cur->next->next;
            if(cur->next) cur->next->prev = cur;
        }
        return 0;
    }

    FreeMem* newSeg = (FreeMem*)(addr - MEM_BLOCK_SIZE); // moramo da ga vratimo unazad

    // Try to append it to the next free segment:
    FreeMem* nxtSeg = cur?cur->next:fmem_head;
    // ovde sa obrisao (size + 1) jer ne vracam ni addr za jedan blok unazad pa se to kompenzuje
    if(nxtSeg && addr + size * MEM_BLOCK_SIZE == (char*)nxtSeg){
        newSeg->size = nxtSeg->size + size + 1;
        newSeg->prev = nxtSeg->prev;
        newSeg->next = nxtSeg->next;
        if(nxtSeg->next)nxtSeg->next->prev = newSeg;
        if(nxtSeg->prev)nxtSeg->prev->next = newSeg;
        else fmem_head = newSeg;
        return 0;
    }

    // No need to join; insert the new segment after cur
    newSeg->size = size + 1;
    newSeg->prev = cur;
    if(cur)newSeg->next = cur->next;
    else newSeg->next = fmem_head;
    if(newSeg->next) newSeg->next->prev = newSeg;
    if(cur)cur->next = newSeg;
    else fmem_head = newSeg;

    return 0;
}
