#include <stdio.h>
#include <string.h>

// string :: �˻� ����� ���ڿ�
// pat :: ã�����ϴ� ����
int nfind(char *string, char *pat)
{
    int i, j, start = 0;
    // string�� ������ �ε���
    int lasts = strlen(string) - 1;
    // pat�� ������ �ε���
    int lastp = strlen(pat) - 1;
    // string���� ���� �˻� ���� �κ��� ������ �ε���
    int endmatch = lastp;

    for (i = 0; endmatch <= lasts; endmatch++, start++)
    {
        if (string[endmatch] == pat[lastp])
        {
            for (j = 0, i = start; j < lastp && string[i] == pat[j]; i++, j++);
            if (j == lastp && string[i] == pat[j]) // ������ ������ ���ڱ��� ��ġ�ϴ��� Ȯ��
            {
                return start; // ������ �߰ߵ� ���� ��ġ ��ȯ
            }
        }
    }
    return -1; // ������ ���ڿ� ������ �߰ߵ��� ����
}

int main(void)
{
    char string[] = "Hello,World!";
    char pattern[] = "World";

    int position = nfind(string, pattern);

    if (position != -1)
    {
        printf("������ �߰ߵ� ��ġ: %d\n", position);
    }
    else
    {
        printf("������ ���ڿ� ������ �߰ߵ��� ����.\n");
    }

    return 0;
}
