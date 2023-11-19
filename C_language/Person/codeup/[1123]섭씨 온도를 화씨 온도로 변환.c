#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS

int main(void)
{
    int temperature;

    scanf("%d", &temperature);

    printf("%.3f\n", ((9.0 / 5.0) * temperature) + 32);

    return 0;
}