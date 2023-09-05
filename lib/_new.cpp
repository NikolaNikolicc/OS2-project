//#include "../h/MemoryAllocator.hpp"

//void *operator new(uint64 n){
//    // treba da se poravna
//    return MemoryAllocator::getInstance().memory_alloc((n);
//}
//
//void *operator new[](uint64 n){
//    return MemoryAllocator::memory_alloc(n);
//}
//
//void operator delete(void* p)noexcept{
//    c_api::mem_free(p);
//}
//
//void operator delete[](void* p)noexcept{
//    c_api::mem_free(p);
//}