#include <stdio.h>
#define swap(a, b, c) ((c) = (a), (a) = (b), (b) = (c))

void perm(char *list, int i, int n)
{
    int j, temp;

    if (i == n)
    {
        for (int j = 0; j < n; j++)
        {
            printf("%c", list[j]);
        }
        printf("      ");
    }
    else
    {
        for (int j = i; j < n; j++)
        {
            swap(list[i], list[j], temp);
            perm(list, i + 1, n);
            swap(list[i], list[j], temp);
        }
        
    }
}

int main(void)
{
    char list[] = {'a', 'b', 'c'};
    perm(list, 0, 3);
    return 0;
}