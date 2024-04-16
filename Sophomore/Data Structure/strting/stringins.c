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

    // Process Error
    if (i < 0 || i > strlen(s))
    {
        fprintf(stderr, "Position is out of bounds \n");
        exit(EXIT_FAILURE);
    }

    // s가 비어있는 경우
    if (!strlen(s))
    {
        // s에 t 내용이 채워집니다
        strcpy(s, t);
    }
    // t > 0 경우
    else if (strlen(t))
    {
        strncpy(temp, s, i);
        temp[i] = '\0';

        strcat(temp, t);
        strcat(temp, (s+i));
        strcpy(s, temp);
    }
}

int main(void)
{
    stringins(s, t, 1);
    printf("%s\n", s);
    return EXIT_SUCCESS;
}