#include <hlmando.h>

int al = 100;
static int bO;
const int LUT[10] = { 1, 2, 3, 4, 5, 6, 7,8, 9, 10};

int foo(int a) {
    static int i = 0;
    i++;
    
    al = 200;
    return a+1;
}
