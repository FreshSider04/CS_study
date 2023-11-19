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

    printf("\n학번: %d\n", s.number);
    printf("이름: %s\n", s.name);
    printf("학점: %f\n", s.grade);
}
