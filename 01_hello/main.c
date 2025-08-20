#include <stdio.h>
#include <hlmando.h>
#include <can/hlcan.h>

extern int al;
extern int bO;

int main() {
    int a = 10;

    a = foo(a);
    int a1 = 4;
    int b0 = 12;
    al = bO + 10; // buggy by global var

    printf("hello world %d\n", a);
    return 0;

}