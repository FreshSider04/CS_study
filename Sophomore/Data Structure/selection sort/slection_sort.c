#include <stdio.h>
#define swap(x, y, t) ((t) = (x), (x) = (y), (y) = (t))

void sort(int [], int *);
void printArr(int [], int *);

int main(void)
{
    int arrLen = 13;
    int arr[] = {23, 34, 32, 17, 89, 102, 45, 67, 9, 20, 1, 8, 3};

    printf("\nBefore Array\n");
    printArr(arr, &arrLen);

    printf("\n");
    
    sort(arr, &arrLen);

    printf("\nSorted Array\n");
    printArr(arr, &arrLen);
}

void sort(int Arr[], int *len)
{
    int min, temp = 0;

    for (int i = 0; i < *len-1; i++)
    {
        min = i;
        for (int j = i+1; j < *len; j++)
        {
            if (Arr[min] > Arr[j])
            {
                min = j;
            }
        }
        swap(Arr[i], Arr[min], temp);
    }
    
}

void printArr(int Arr[], int *len)
{
    for (int i = 0; i < *len; i++)
    {
        printf("%d  ", Arr[i]);
    }
}