#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS

int main(void) 
{
    int a, b;
    scanf("%d %d", &a, &b);

    if (a > b)
    {
        printf(">");
    }
    else if (a < b)
    {
        printf("<");
    }
    else if (a == b)
    {
        printf("==");
    }
}