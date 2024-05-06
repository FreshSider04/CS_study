#include <stdio.h>
#define MaxStackSize 100
#define FALSE 0
#define TRUE 1
#define EXIT_ROW 11
#define EXIT_COL 15

typedef struct 
{
    int vert;
    int horiz;
}offset;

typedef struct
{
    short int row;
    short int col;
    short int dir;
}element;


// 방향 표시
offset move[8] = {{-1, 0}, {-1, 1}, {0, 1}, {1, 1}, {1, 0}, {1, -1}, {0, -1}, {-1, -1}};
element stack[MaxStackSize];

int top;

int maze[13][17] =
{
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1},
    {1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1},
    {1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1},
    {1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 0, 1},
    {1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1},
    {1, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 0, 0, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1},
    {1, 1, 1, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1},
    {1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 1},
    {1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
};

int mark[13][17] = {0};

void push(int *top, element position)
{
    (*top)++;
    stack[*top].row = position.row;
    stack[*top].col = position.col;
    stack[*top].dir = position.dir;
}
element pop(int *top)
{
    element result;
    // stack이 비어있을 때
    if (*top <  0)
    {
        printf("Stack is Empty.\n");
    }
    // 아니면 pop
    else
    {
        result = stack[*top];
        (*top)--;
    }

    return result;
}

void path()
{
    int i, row, col, nextRow, nextCol, dir, found = FALSE;
    element position;
    mark[1][1] = 1; 
    top = 0;
    stack[0].row = 1; stack[0].col = 1; stack[0].dir = 1;

    while (top > -1 && !found)
    {
        position = pop(&top);
        row = position.row; col = position.col; dir = position.dir;
        while (dir < 8 && !found)
        {
            nextRow = row + move[dir].vert;
            nextCol = col + move[dir].horiz;

            if (nextRow == EXIT_ROW && nextCol == EXIT_COL)
            {
                found = TRUE;
            }
            else if (!maze[nextRow][nextCol] && !mark[nextRow][nextCol])
            {
                mark[nextRow][nextCol] = TRUE;
                position.row = row; position.col = col; position.dir = ++dir;
                push(&top, position);
                row = nextRow;
                col = nextCol;
                dir = 0;
            }
            else
            {
                dir++;
            } 
        } 
    }
    if (found)
    {
        printf("The path is:\n");
        printf("row   col\n");
        for ( i = 0; i <= top; i++)
        {
            printf("%2d%5d\n", stack[i].row, stack[i].col);
        }
        printf("%2d%5d\n", row, col);
        printf("%2d%5d\n", EXIT_ROW, EXIT_COL);
    }
    else printf("No Path!@@@!!\n");
}

int main()
{
    path();
}