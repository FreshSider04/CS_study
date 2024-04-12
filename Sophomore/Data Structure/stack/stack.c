#include <stdio.h>
#include <stdlib.h>

#define MaxStackSize 100000

#define EXIT_FAILURE 1
#define EXIT_SUCCESS 0

void push(int);
void pop();
void stackFull();
void stackEmpty();

void printStack();

int stack[MaxStackSize] = {0};
int top = -1;

int main(void)
{
    push(1); 
    push(2);
    push(3);
    push(4);
    push(5);

    printStack();

    pop();
    pop();

    printStack();

}

void push(int item)
{
    if (top >= MaxStackSize-1)
    {
        stackFull();
    }

    stack[++top] = item;
}

void pop()
{
    if (top == -1)
    {
        return stackEmpty();
    }
    return stack[top--];   
}

void stackFull()
{
    fprintf(stderr, "Stack is full, can't add element");
    exit(EXIT_FAILURE);
}

void stackEmpty()
{
    if (top <= -1)
    {
        fprintf(stderr, "Stack is empty, Plase add element");
        exit(EXIT_FAILURE);
    }
    
}

void printStack()
{
    printf("\n current stack... \n");
    for (int i = 0; i < top+1; i++)
    {
        printf(" %d ", stack[i]);
    }
}