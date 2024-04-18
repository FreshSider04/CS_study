#include <stdio.h>

typedef enum {lparen, rparen, plus, minus, times, divide, mod, eos, operand} precedence;

int eval(void)
{
    precedence token;
    char symbol;
    int op1, op2;
    int n = 0;
    int top = -1;
    token = getToken(&symbol, &n);

    while (token != eos)
    {
        if (token == operand)
        {
            push(symbol-'0');
        }
        else
        {
            op2 = pop();
            op1 = pop();

            switch (token)
            {
                case plus:
                    push(op1+op2);
                    break;
                case minus:
                    push(op1-op2);
                    break;
                case times:
                    push(op1*op2);
                    break;
                case divide:
                    push(op1/op2);
                    break;
                case mod:
                    push(op1%op2);
                    break;
            }
        } 
        token = getToken(&symbol, &n);
    }
    return pop();
}

precedence getToken(char *symbol, int *n)
{
    
}