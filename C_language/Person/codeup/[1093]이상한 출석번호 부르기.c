#include <stdio.h>

int main(void)
{
    int n;
    int call_num;

    int attend[23] = { 0 };

    // n번 무작위 호출
    scanf("%d", &n);

    // n번 입력 받기
    for (int i = 0; i < n; i++)
    {
        scanf("%d", &call_num);

        attend[call_num - 1] += 1;
    }

    for (int i = 0; i < 23; i++)
    {
        printf("%d ", attend[i]);
    }
}