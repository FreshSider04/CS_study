#include <stdio.h>

// data : 탐색할 오름차순으로 정렬된 정수 배열
// n : 정수 배열의 크기
// key : 찾고자하는 값
int binsearch(int data[], int n, int key) {
    int low, high;
    int mid;

    // 배열의 최솟값
    low = 0;
    // 배열의 최댓값
    // 하지만, 인덱스는 0부터 카운트 하므로 -1
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

 
int main(void)
{
    //정렬된 자료
    int a[] = { 2, 8, 13, 16, 20, 22, 34, 45, 56, 77 };
    int index;
    int key;
 
    scanf("%d", &key);
    // binary(Array, index, key)
    index = binsearch(a, 10, key);
    if (index == -1) {
        printf("자료가 없습니다!\n");
    }
    else {
        printf("자료가 %d번째에 있습니다.\n", index + 1);
    }
    return 0;
}