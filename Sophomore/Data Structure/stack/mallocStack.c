#include <stdio.h>
#include <stdlib.h>

#define EXIT_FAILURE 1
#define EXIT_SUCCESS 0

#define MALLOC(p, s) \
    if (!((p) = malloc(s))) { \
        fprintf(stderr, "Insufficient memory\n"); \
        exit(EXIT_FAILURE); \
    }

#define REALLOC(p, s) \
    if (!((p) = realloc(p, s))) { \
        fprintf(stderr, "Insufficient memory\n"); \
        exit(EXIT_FAILURE); \
    }

void stackFull();

int capacity = 1;
int* stack = NULL; // 스택을 가리킬 포인터

int main(void)
{
    MALLOC(stack, capacity * sizeof(int)); // 초기 메모리 할당

    stackFull();
    stackFull();
    stackFull();
    stackFull();

    printf("%d\n", capacity); // 현재 용량 출력
    free(stack); // 할당된 메모리 해제
    return EXIT_SUCCESS;
}

void stackFull()
{
    capacity *= 2; // 용량을 두 배로 증가
    REALLOC(stack, capacity * sizeof(int)); // 메모리 재할당
}