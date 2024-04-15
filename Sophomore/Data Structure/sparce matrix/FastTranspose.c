#include <stdio.h>

#define MAX_TERMS 101
#define MAX_COL 50

typedef struct {
    int row;
    int col;
    int value;
} term;

term a[MAX_TERMS];

void fastTranspose(term a[], term b[])
{
    int rowTerms[MAX_COL], startingPos[MAX_COL];
    int i, j, numCols = a[0].col, numTerms = a[0].value;

    b[0].row = numCols; b[0].col = a[0].row; 
    b[0].value = numTerms;

    if (numTerms > 0)
    {
        for (i = 0; i < numCols; i++)
        {
            rowTerms[i] = 0;
        }
        for (i = 1; i <= numTerms; i++)
        {
            rowTerms[a[i].col]++;
        }

        startingPos[0] = 1; // 전치행렬에서 첫 번째 비제로(non-zero) 항목의 시작 위치는 1입니다.
        for (i = 1; i < numCols; i++)
        {
            startingPos[i] = startingPos[i - 1] + rowTerms[i - 1];
        }
        for (i = 1; i <= numTerms; i++)
        {
            j = startingPos[a[i].col]++;
            b[j].row = a[i].col; b[j].col = a[i].row;
            b[j].value = a[i].value;
        }
    }
}

int main(void)
{
    term a[9] = {{6, 6, 8}, {0, 0, 15}, {0, 3, 22}, {0, 5, -15}, {1, 1, 11}, {1, 2, 3}, {2, 3, -6}, {4, 0, 91}, {5, 2, 28}};
    term b[9];

    printf("index   row   col   value\n");
    printf("--------------------------\n");
    for (int i = 0; i < 9; i++)
    {
        printf(" a[%d] |  %d     %d     %d\n", i, a[i].row, a[i].col, a[i].value);
    }
    printf("\n\n");

    fastTranspose(a, b); // 함수 호출 이름을 fastTranspose로 수정

    printf("\n\n");
    printf("Transpose processing has been finished.\n");
    printf("\n\n");

    printf("index   row   col   value\n");
    printf("--------------------------\n");
    for (int i = 0; i < 9; i++)
    {
        printf(" b[%d] |  %d     %d     %d\n", i, b[i].row, b[i].col, b[i].value);
    }
    printf("\n\n");

    return 0;
}