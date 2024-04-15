#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MaxSize 100
#define EXIT_FAILURE 1
#define EXIT_SUCCESS 0

char string1[MaxSize] = "amobile", *s = string1;
char string2[MaxSize] = "uto", *t = string2;



void stringins(char *s, char *t, int i)
{
    char string[MaxSize], *temp = string;

    if (i < 0 || i > strlen(s))
    {
        fprintf(stderr, "Position is out of bounds \n");
        exit(EXIT_FAILURE);
    }
    if (!strlen(s))
    {
        strcpy(s, t);
    }
    else if (strlen(t))
    {
        strncpy(temp, s, i);
        strcat(temp, t);
        strcat(temp, (s+i));
        strcpy(s, temp);
    }
}

int main(void)
{
    // Case 1: 문자열 s의 시작 부분에 t 삽입
    printf("Before: %s\n", s);
    stringins(s, t, 0);
    printf("After inserting '%s' at position 0: %s\n", t, s);

    // s를 초기화
    strcpy(s, "amobile");

    // Case 2: 문자열 s의 중간에 t 삽입
    stringins(s, t, 4);
    printf("After inserting '%s' at position 4: %s\n", t, s);

    // s를 초기화
    strcpy(s, "amobile");

    // Case 3: 문자열 s의 끝에 t 삽입
    int pos = strlen(s); // s의 끝 위치
    stringins(s, t, pos);
    printf("After inserting '%s' at position %d (end): %s\n", t, pos, s);

    // s를 초기화
    strcpy(s, "amobile");

    // Case 4: i가 문자열 s의 범위를 벗어난 경우는 프로그램이 종료될 것이므로 생략

    return EXIT_SUCCESS;
}