#include <stdio.h>
#include <stdlib.h>

#define MAX_STACK_SIZE 100
#define MAX_EXPR_SIZE 100

typedef enum {lparen, rparen, plus, minus, times, divide, mod, eos, operand} precedence;


// About stack
int stack[MAX_STACK_SIZE];
int top = -1;
char expr[MAX_EXPR_SIZE] = "62/3-42*+"; // ���� ����

void push(int item) {
    if (top >= MAX_STACK_SIZE - 1) {
        fprintf(stderr, "Stack Overflow\n");
        return;
    }
    stack[++top] = item;
}

int pop() {
    if (top == -1) {
        fprintf(stderr, "Stack Underflow\n");
        exit(EXIT_FAILURE);
    }
    return stack[top--];
}


precedence getToken(char *symbol, int *n) {
    *symbol = expr[(*n)++];
    switch (*symbol) {
        case '(': return lparen;
        case ')': return rparen;
        case '+': return plus;
        case '-': return minus;
        case '/': return divide;
        case '*': return times;
        case '%': return mod;
        case '\0': return eos;
        default: return operand; // ������ ���
    }
}

int eval(void) {
    precedence token;
    char symbol;
    int op1, op2;
    int n = 0;
    token = getToken(&symbol, &n);

    while (token != eos) {
        if (token == operand) {
            push(symbol - '0'); // ���ڸ� ���ڷ� ��ȯ�Ͽ� ���ÿ� ����
        } else {
            op2 = pop();
            op1 = pop();
            switch (token) {
                case plus: push(op1 + op2); break;
                case minus: push(op1 - op2); break;
                case times: push(op1 * op2); break;
                case divide: push(op1 / op2); break;
                case mod: push(op1 % op2); break;
                default: break;
            }
        }
        token = getToken(&symbol, &n);
    }
    return pop(); // ���� ��� ��ȯ
}

int main(void) {
    printf("���: %d\n", eval());
    return 0;
}
