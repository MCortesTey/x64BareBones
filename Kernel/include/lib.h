#ifndef LIB_H
#define LIB_H

#include <stdint.h>

void * memset(void * destination, int32_t character, uint64_t length);
void * memcpy(void * destination, const void * source, uint64_t length);

char *cpuVendor(char *result);

uint8_t getTime();
uint8_t getSeconds();
uint8_t getMinutes();
uint8_t getHours();
uint8_t getKeyPressed();

#endif