#include <stdio.h>

int main(void)
{
    // 변수 : 시간, 분
    int hour, min;
    // 변수 : 주어진 시간
    int givenmin;
    // 변수 : 합계 -> 시간을 분으로 전환하기 위한 작업
    int sum;

    scanf("%d %d", &hour, &min);
    scanf("%d", &givenmin);

    sum = hour * 60 + min + givenmin;

    printf("%d %d", sum / 60 % 24, sum % 60);
}