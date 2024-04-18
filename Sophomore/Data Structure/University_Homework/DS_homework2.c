#include <stdio.h>
 
int binsearch(int [], int, int);
int main()
{
    int a[10] = { 2, 8, 13, 16, 20, 22, 34, 45, 56, 77 };    //정렬된 자료
    int index;
    int key;
 
    scanf("%d", &key);
    index = binsearch(a, 10, key);
    if (index == -1) {
        printf("자료가 없습니다!\n");
    }
    else {
        printf("자료가 %d번째에 있습니다.\n", index + 1);
    }
    return 0;
}

int binsearch(int data[], int n, int key) {
    int low, high;
    int mid;
 
    low = 0;
    high = n - 1;
    while (low <= high) {
        mid = (low + high) / 2;
        //탐색 성공
        if (key == data[mid]) {
            return mid;        
        }
        //탐색 범위를 아래쪽으로
        else if (key < data[mid]) {
            high = mid - 1;
        }
        //탐색 범위를 위쪽으로
        else if (key > data[mid]) {
            low = mid + 1;
        }
    }
    // 탐색 실패
    return -1;
}
