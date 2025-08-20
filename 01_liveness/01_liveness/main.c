#include <stdio.h>
#include "hmobis.h"

extern int g1;
extern int k2;

int main() {

    init();

    int a = 100;
    a = incr(100);

    // g1 = 105; overwrite, error happend..

    printf("Hello World %d\n", a);
    printf("g1 is %d\n", g1);

    //printf("k2 is %d\n", k2); 
    //couldn't access static var in another file

    incr(100);
    incr(100);
    incr(100);
    incr(100);
    incr(100);

    return 0;

}