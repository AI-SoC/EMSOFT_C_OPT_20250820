
#include "hmobis.h"
#include <stdio.h>

int g1;
int table[3];
const int coef[5] = {1,2,3,4,5};
static int k2 = 789; 
// static -> limit liveness range in here

void init() {
    g1 = 100;
    table[0] = 1;
    table[1] = 3;
    table[2] = 7;
}

int incr(int a) {
    static int s = 0;

    g1++;
    if(g1 == 103)
        printf("g1 temperature is hot..\n");

    s++;
    if(s == 4)
        printf("s temperature is hot..\n");

    return a+1;
}