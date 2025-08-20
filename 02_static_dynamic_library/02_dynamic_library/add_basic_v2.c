#include <stdio.h>

__declspec(dllexport) int __cdecl Add(int a, int b)
{
    printf("Add v2 executed\n");
    return (a + b + 10);
}
