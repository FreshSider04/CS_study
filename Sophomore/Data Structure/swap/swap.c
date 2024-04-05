#include <stdio.h>

// swap의 방법 1
#define swap(x, y, t) ((t) = (x), (x) = (y), (y) = (t))

// swap의 방법 2
void SWAP (int *x,int *y)
{
    int temp = 0;

    temp = *x;
    *x = *y;
    *y = temp;
}

int main(void)
{
    int x = 10; int y = 20; int temp;
    swap(x, y, temp); // 20 10
    SWAP(&x, &y); // 10 20

    printf("%d %d", x, y) ;
}