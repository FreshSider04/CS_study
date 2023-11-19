#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS

int main(void)
{
    int a, b, c;

    scanf("%d %d %d", &a, &b, &c);

    printf("%d\n", (a + b + c));
    printf("%.1f", (a + b + c) / 3.0);

    return 0;
}