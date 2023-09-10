#ifndef _console_hpp_
#define _console_hpp_

#include "../h/my_buffer.hpp"

class Console{
public:

    static Console& getInstance();

    Console(const Console&) = delete;
    void operator=(Console const&) = delete;

    void put_in_input(char c);
    char get_from_input();
    void put_in_output(char c);
    char get_from_output();
    int get_output_size(){ return output_buffer->getCnt(); }
    int get_input_size(){ return input_buffer->getCnt(); }

    MyBuffer* get_input_buff(){return input_buffer;}

private:

    static void console_setup(void* MyConsole);

    static kmem_cache_t* console_cache;
    static Console* console_instance;
    MyBuffer* input_buffer;
    MyBuffer* output_buffer;
};

#endif