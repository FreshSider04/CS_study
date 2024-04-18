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
    ���̻�, ���λ縦 ��������� ����
    ������ failure�� ++ ���ְ�
    �ƴϸ� -1�� �Ѵ�
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

    fail(pat); // ���� ���� �Լ��� ���� ����մϴ�.

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
    // ���ڿ��� ���� ���� �Է�
    strcpy(string, "abcabeabcabcabd");
    strcpy(pat, "abcabd");
    
    int match = pmatch(string, pat);
    if (match != -1) {
        printf("������ ���ڿ��� %d ��ġ���� �߰ߵǾ����ϴ�.\n", match);
    } else {
        printf("������ ���ڿ����� �߰ߵ��� �ʾҽ��ϴ�.\n");
    }

    return 0;
}
