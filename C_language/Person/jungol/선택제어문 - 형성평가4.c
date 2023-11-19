#include <stdio.h>
#define _CRT_SECURE_NO_WARNINGS
#include<stdio.h>
int main()
{
    int num;

    printf("Number? ");
    scanf("%d",&num);
    
    switch(num){
        case 3:
            printf("chick");
            break;
        case 2:
            printf("cat");
            break;
        case 1:
            printf("dog");
            break;
        default:
            printf("I don't know.");
            break;
        } 
}