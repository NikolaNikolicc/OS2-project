//
// Created by os on 9/5/23.
//

#ifndef PROJECT_BASE_V1_1_STRING_H
#define PROJECT_BASE_V1_1_STRING_H


bool size_start(const char *name);
int get_int_length(int number);
void int_to_string(int number, char* buffer, int bufferSize);
char* concatenate_int_to_char_ptr(int number);
bool string_compare(const char* str1, const char* str2);

#endif //PROJECT_BASE_V1_1_STRING_H
