#include <iostream>
using namespace std;
#define swap(x, y, t) ((t) = (x), (x) = (y), (y) = (t))

void Sort(int [], int*);
void PrintList(int [], int*);
int main(void)
{
     int N; cin >> N;
     int list[N];

     for (int i = 0; i < N; i++)
     {
          cin >> list[i];
     }

     Sort(list, &N);
     PrintList(list, &N);
}

void Sort(int list[], int *N)
{
     int temp = 0;
     for (int i = 0; i < *N-1; i++)
     {
          int minValue = i;
          for (int j = i+1; j < *N; j++)
          {
               if (list[minValue] > list[j])
               {
                    minValue = j;
               }
          }

          swap(list[i], list[minValue], temp);
          
     }
     
}

void PrintList(int list[], int *N)
{
     for (int i = 0; i < *N; i++)
     {
          cout << list[i] << "\n";
     }
}