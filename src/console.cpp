
#include "../h/console.hpp"

Console* Console::console_instance = nullptr;
kmem_cache_t * Console::console_cache = nullptr;

void Console::put_in_input(char c){
    input_buffer->put(c);
}

char Console::get_from_input(){
    return (char)input_buffer->get();
}

void Console::put_in_output(char c){
    output_buffer->put(c);
}
char Console::get_from_output(){
    return (char)output_buffer->get();
}

Console &Console::getInstance() {
    if(!console_instance){
        console_cache = (kmem_cache_t*) kmem_cache_create("console_cache", sizeof(Console), &console_setup, nullptr);
        console_instance = (Console*)kmem_cache_alloc(console_cache);
    }
    return *console_instance;

}

void Console::console_setup(void *myConsole) {
    auto* cons = (Console*)myConsole;
    cons->input_buffer = (MyBuffer*)kmem_cache_alloc(MyBuffer::get_buffer_cache());
    cons->output_buffer = (MyBuffer*) kmem_cache_alloc(MyBuffer::get_buffer_cache());
}
