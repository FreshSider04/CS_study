#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS

int main(void)
{
    int a;

    scanf("%d", &a);
    
    if(a == 0)
    {
        printf("zero");
    }
    else if(a > 0)
    {
        printf("plus");
    }
    else if (a < 0)
    {
        printf("minus");
    }
}