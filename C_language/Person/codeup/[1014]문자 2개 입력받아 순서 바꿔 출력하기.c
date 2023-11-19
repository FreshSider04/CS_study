#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS

int main (void)
{
    char x, y, temp;
    scanf("%c %c", &x, &y);
    temp = x;
    x = y;
    y = temp;
    printf("%c %c", x, y);
}