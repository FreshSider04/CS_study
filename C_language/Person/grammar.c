#include <stdio.h>

int main() 
{
    // 변환 문자
    // int => %d
    // double => %lf (참고로 float형은 %f라고 한다)
    // char => %c(문자)
    // char 배열 => %s(문자열)
    int a = 40;
    printf("%d\n", a);

    // 지수화(정규화)
    // 0.0000314 => 3.14e-5
    float pi = 3.14e-5;
    printf("%f\n", pi);

    // 상수
    // 절대로 변하지 않는 변수
    const int b = 20;
    printf("%d", b);

    // 2의 보수
    // 1의 보수(10진수를 2진수화)후 +1

    // signed vs unsigned
    // 부호를 가진것, 부호를 가지지 않는 것

    // 배열
}

