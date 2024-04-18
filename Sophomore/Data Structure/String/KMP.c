#include <stdio.h>
#include <string.h>
#define max_string_size 100
#define max_pattern_size 100

int failure[max_pattern_size];
char string[max_string_size];
char pat[max_pattern_size];

void fail(char *pat) {
    int i, j;
    failure[0] = -1;

    /*
    접미사, 접두사를 계속적으로 비교해
    같으면 failure을 ++ 해주고
    아니면 -1로 한다
    */
    for (j = 1; j < strlen(pat); j++) {
        i = failure[j-1];
        while ((pat[j] != pat[i+1]) && (i >= 0)) {
            i = failure[i];
        }
        if (pat[j] == pat[i+1]) {
            failure[j] = i+1;

        } else {
            failure[j] = -1;
        }
    }
}

int pmatch(char *string, char *pat) {
    int i = 0, j = 0;

    fail(pat); // 패턴 실패 함수를 먼저 계산합니다.

    while (i < strlen(string) && j < strlen(pat)) {
        if (string[i] == pat[j]) {
            i++; j++;
        } else if (j == 0) {
            i++;
        } else {
            j = failure[j-1] + 1;
        }
    }
    
    return ((j == strlen(pat)) ? (i - strlen(pat)) : -1);
}

int main(void) {
    // 문자열과 패턴 예시 입력
    strcpy(string, "abcabeabcabcabd");
    strcpy(pat, "abcabd");
    
    int match = pmatch(string, pat);
    if (match != -1) {
        printf("패턴이 문자열의 %d 위치에서 발견되었습니다.\n", match);
    } else {
        printf("패턴이 문자열에서 발견되지 않았습니다.\n");
    }

    return 0;
}
