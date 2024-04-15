#include <stdio.h>
#include <stdlib.h>
#define MaxTerm 100 //다항식의 최대 차수 + 1

typedef struct
{
    // 계수
    float coef;
    // 지수                            
    int expon;
}polynomial;

polynomial term[MaxTerm];
// 현재 배열에 저장된 항의 수를 나타내며, 새로운 항을 추가할 위치 가르킨다.
int avail = 0;

// 두 수 비교 함수
int COMPARE(int a, int b) {
    if (a > b) {
        return 1;
    } 
    if (a == b)
    {
        return 0;
    }
    if (a < b)
    {
        return -1;
    }
    
}
// 다항식에 새로운 항을 붙이는 함수
void attach(float coefficient, int exponent)
{
    if (avail >= MaxTerm)
    {
        fprintf(stderr, "다항식에 항이 너무 많습니다.");
        exit(1);
    }
    
    // 계수와 지수를 입력받고 +1 증가
    term[avail].coef = coefficient;
    term[avail++].expon = exponent;
    
}

void padd(int startA, int finishA, int startB, int finishB, int *startD, int *finishD)
{
    float coefficient;
    *startD = avail;

    while ( (startA <= finishA) && (startB <= finishB) )
    {
        switch (COMPARE(term[startA].expon, term[startB].expon))
        {
        case -1:
            attach(term[startB].coef, term[startB].expon);
            startB++;
            break;

        case 0:
            coefficient = term[startA].coef + term[startB].coef;
            if (coefficient)
            {
                attach(coefficient, term[startA].expon);
            }
            startA++;
            startB++;
            break;

        case 1:
            attach(term[startA].coef, term[startA].expon);
            startA++;
            break;
        }
    }
    
    for (; startA <= finishA; startA++)
    {
        attach(term[startA].coef, term[startA].expon);
    }

    for (; startB <= finishB; startB++)
    {
        attach(term[startB].coef, term[startB].expon);
    }

    *finishD = avail-1;
    
}

void printPoly(int start, int finish) {
    for (int i = start; i <= finish; i++) {
        printf("%.1f x^%d ", term[i].coef, term[i].expon);
        if (i < finish) {
            printf("+ ");
        }
    }
    printf("\n");
}

int main(void) {
    // 첫 번째 다항식: 3x^4 + 2x^3 + 4
    attach(3, 4);
    attach(2, 3);
    attach(4, 0);
    int startA = 0, finishA = 2; // 다항식 A의 시작과 끝 인덱스

    // 두 번째 다항식: 5x^2 + 2x + 1
    attach(5, 2);
    attach(2, 1);
    attach(1, 0);
    int startB = 3, finishB = 5; // 다항식 B의 시작과 끝 인덱스

    int startD, finishD; // 결과 다항식 D의 시작과 끝 인덱스

    // 다항식 덧셈 수행
    padd(startA, finishA, startB, finishB, &startD, &finishD);

    // 결과 출력
    printf("A(x) = ");
    printPoly(startA, finishA);
    printf("B(x) = ");
    printPoly(startB, finishB);
    printf("A(x) + B(x) = ");
    printPoly(startD, finishD);

    return 0;
}