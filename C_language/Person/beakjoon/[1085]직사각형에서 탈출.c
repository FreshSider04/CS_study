# include <stdio.h>
# include <limits.h>
#define _CRT_SECURE_NO_WARNINGS

int main(void)
{
    int x, y, w, h;
    int arr_min[4] = {0};
    int min = INT_MAX;

    scanf("%d %d %d %d", &x, &y, &w, &h);
    
    arr_min[0] = x;
    arr_min[1] = y;
    arr_min[2] = w - x;
    arr_min[3] = h - y;

    for (int i = 0; i < 4; i++)
    {
        if (min > arr_min[i])
        {
            min = arr_min[i];
        }
    }
    
    printf("%d", min);
}