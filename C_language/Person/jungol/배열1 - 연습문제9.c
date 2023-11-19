#include <stdio.h>

int main(void)
{
    int arr[5] = {95, 75, 85, 100, 50};
    int temp;

    temp = arr[0];
    arr[0] = arr[4];
    arr[4] = arr[3];
    arr[3] = temp;

    for (int i = 0; i < 5; i++)
    {
        printf("%d ", arr[i]);
    }
    



}