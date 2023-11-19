#include <stdio.h>

int main(void)
{
    int year;
    int month;
    int day[12] = {31,28,31,30,31,30,31,31,30,31,30,31};

    while (1)
    {
        printf("YEAR = ");
        scanf("%d", &year);

        printf("MONTH = ");
        scanf("%d", &month);

        if (month > 12 || month < 0 )
        {
            printf("잘못 입력하였습니다.");
        }
        else if (month == 0)
        {
            break;
        }
        else 
        {
            printf("입력하신 달의 날 수는 %d일입니다.\n", day[month - 1]);
        }
        
    }
}