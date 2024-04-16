#include <stdio.h>
#include <string.h>

// string :: 검색 대상의 문자열
// pat :: 찾고자하는 패턴
int nfind(char *string, char *pat)
{
    int i, j, start = 0;
    // string의 마지막 인덱스
    int lasts = strlen(string) - 1;
    // pat의 마지막 인덱스
    int lastp = strlen(pat) - 1;
    // string에서 현재 검사 중인 부분의 마지막 인덱스
    int endmatch = lastp;

    for (i = 0; endmatch <= lasts; endmatch++, start++)
    {
        if (string[endmatch] == pat[lastp])
        {
            for (j = 0, i = start; j < lastp && string[i] == pat[j]; i++, j++);
            if (j == lastp && string[i] == pat[j]) // 패턴의 마지막 문자까지 일치하는지 확인
            {
                return start; // 패턴이 발견된 시작 위치 반환
            }
        }
    }
    return -1; // 패턴이 문자열 내에서 발견되지 않음
}

int main(void)
{
    char string[] = "Hello,World!";
    char pattern[] = "World";

    int position = nfind(string, pattern);

    if (position != -1)
    {
        printf("패턴이 발견된 위치: %d\n", position);
    }
    else
    {
        printf("패턴이 문자열 내에서 발견되지 않음.\n");
    }

    return 0;
}
