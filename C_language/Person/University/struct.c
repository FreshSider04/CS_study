#include <stdio.h>
#include <string.h>

struct student
{
    int number;
    char name[10];
    double grade;
};

int main(void)
{
    struct student s;
    scanf("%d", &s.number);
    scanf("%s", &s.name);
    scanf("%lf", &s.grade);

    printf("\n�й�: %d\n", s.number);
    printf("�̸�: %s\n", s.name);
    printf("����: %f\n", s.grade);
}
