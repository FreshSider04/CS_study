#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define MAXSIZE 101
#define swap(x, y, t) ((t) = (x), (x) = (y), (y) = (t))

// Failure Const variable
#define EXIT_FAILURE 1
#define EXIT_SUCCESS 0

// Define Select Alignment Functions Prototype
void sort(int [], int);
int binary_search(int [], int, int);

// main Function
int main(void)
{
    int i, n, listCase[MAXSIZE];
    int answer;
    printf("Enter the number of numbers to generate : ");
    scanf("%d", &n);
    // Process Impossible exception
    if (n < 1 || n > MAXSIZE)
    {
        fprintf(stderr, "Improper value if n\n");
        exit(EXIT_FAILURE);
    }
    // generate list value
    for (i = 0; i < n; i++)
    {
        // generate ~1000 random number
        listCase[i] = rand() % 1000;
        printf("%d ", listCase[i]);
    }
    // start sort() Function 
    sort(listCase, n);
    // print sorted array
    printf("\nSorted array: \n");
    for (int i = 0; i < n; i++)
    {
        printf("%d  ", listCase[i]);
    }

    printf("\nEnter the number you want to find: \n");
    scanf("%d", &answer);
    printf("\nBinary array: \n");
    printf("%d",binary_search(listCase, n, answer));
}
void sort(int list[], int n)
{
    int i, j;
    int min, temp;
    // 첫 인덱스부터 마지막 전 인덱스 Loop
    for (i = 0; i < n-1; i++)
    {
        // 일단 최소값의 인덱스를 잡는다
        min = i;
        //최소값이라 정해둔 인덱스랑 다음 인덱스 비교
        for (j = i+1; j < n; j++)
        {
            // 작다고 생각해둔 값보다 j가 더 작으면
            // 최솟값을 j로 설정
            if (list[j] < list[min]) min = j;
        }
        swap(list[i], list[min], temp);
    }
}

int binary_search(int arr[], int count, int answer){
    // 배열의 시작
    int start = 0;
    // 배열 요소의 개수 - 1 = 배열의 마지막 인덱스
    int end = count-1;
    
    while(start<=end){
        // 현재 배열의 중간
        int mid = (start+end)/2;
        
        // 탐색이 성공하면, 그 수의 위치(인덱스)를 리턴
        if(arr[mid]==answer){
            return mid;
        // 중간 값이 찾으려는 값보다 크면
        }else if(arr[mid]>answer){
            end = mid-1;    // 중간 값 바로 이전까지 탐색
        }else{  // 중간 값이 찾으려는 값보다 작으면 
            start = mid+1;  // 중간 값 바로 다음부터 탐색
        }
    }
    // 찾지 못하면 -1을 리턴
    return -1;
}