#include "../h/my_buffer.hpp"

kmem_cache_t* MyBuffer::buffer_cache = nullptr;

void MyBuffer::put(int val) {
    MySemaphore::sem_wait(spaceAvailable);

    MySemaphore::sem_wait(mutexTail);
    if(buffer == nullptr)buffer = (int*)kmalloc(sizeof(int) * cap);
    buffer[tail] = val;
    tail = (tail + 1) % cap;
    MySemaphore::sem_signal(mutexTail);

    MySemaphore::sem_signal(itemAvailable);

}

int MyBuffer::get() {
    MySemaphore::sem_wait(itemAvailable);

    MySemaphore::sem_wait(mutexHead);
    if(buffer == nullptr)buffer = (int*)kmalloc(sizeof(int) * cap);
    int ret = buffer[head];
    head = (head + 1) % cap;
    MySemaphore::sem_signal(mutexHead);

    MySemaphore::sem_signal(spaceAvailable);

    return ret;
}

int MyBuffer::getCnt() {
    int ret;

    MySemaphore::sem_wait(mutexHead);
    MySemaphore::sem_wait(mutexTail);

    if (tail >= head) {
        ret = tail - head;
    } else {
        ret = cap - head + tail;
    }

    MySemaphore::sem_signal(mutexTail);
    MySemaphore::sem_signal(mutexHead);

    return ret;
}

kmem_cache_t* &MyBuffer::get_buffer_cache() {
    if(buffer_cache)return buffer_cache;
    buffer_cache = kmem_cache_create("buffer_cache", sizeof(MyBuffer), &buffer_setup, &buffer_destroy);
    return buffer_cache;
}

void MyBuffer::buffer_setup(void *myBuffer) {
    MyBuffer* buffer = (MyBuffer*)myBuffer;
    buffer->cap = DEFAULT_BUFFER_SIZE + 1;
    buffer->head = 0;
    buffer->tail = 0;
    buffer->buffer = nullptr;
    MySemaphore::sem_open(&buffer->itemAvailable, 0);
    MySemaphore::sem_open(&buffer->spaceAvailable, buffer->cap);
    MySemaphore::sem_open(&buffer->mutexHead, 1);
    MySemaphore::sem_open(&buffer->mutexTail, 1);
}

void MyBuffer::buffer_destroy(void *myBuffer) {
    MyBuffer* buffer = (MyBuffer*)myBuffer;
    kfree(buffer->buffer);
    MySemaphore::sem_close(buffer->itemAvailable);
    MySemaphore::sem_close(buffer->spaceAvailable);
    MySemaphore::sem_close(buffer->mutexTail);
    MySemaphore::sem_close(buffer->mutexHead);
//    kmem_cache_free(get_buffer_cache(), myBuffer);
}
