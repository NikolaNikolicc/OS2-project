//
// Created by os on 9/5/23.
//
#include "../h/String.h"
#include "../test/printing.hpp"

// does name start with size-, 1 if true, 0 if not
bool size_start(const char *name){
    // Check if the input string starts with "size-"
    if (name[0] == 's' && name[1] == 'i' && name[2] == 'z' && name[3] == 'e' && name[4] == '-') {
        return true;
    }
    return false;
}

int get_int_length(int number) {
    int length = 0;
    while (number != 0) {
        number /= 10;
        length++;
    }
    return length;
}

void int_to_string(int number, char* buffer, int bufferSize) {
    int length = get_int_length(number);

    if (length >= bufferSize) {
        // Handle buffer overflow
        return;
    }

    for (int i = length - 1; i >= 0; i--) {
        buffer[i] = '0' + (number % 10);
        number /= 10;
    }
    buffer[length] = '\0';
}

char* concatenate_int_to_char_ptr(int number) {
    char* baseString = (char*)"size-xxxxxx";
    int length = get_int_length(number);
    for(int i = 5 + length; i >= 5; i--){
        if(i == 5 + length){
            baseString[i] = '\0';
        }else{
            int mod = number % 10;
            number /= 10;
            char num_char = '0' + mod;
            baseString[i] = num_char;
        }
    }
    return baseString;

}

bool string_compare(const char* str1, const char* str2) {
    while (*str1 != '\0' && *str2 != '\0') {
        if (*str1 != *str2) {
            return false;
        }
        str1++;
        str2++;
    }

    // Check if both strings have reached the end simultaneously
    return (*str1 == '\0' && *str2 == '\0');
}