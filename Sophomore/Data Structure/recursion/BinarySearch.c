#include <stdio.h>

int BinarySearch(int list[], int searchKey, int left, int right);

int main(void) {
    int a[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int searchKey = 2;
    int n = sizeof(a) / sizeof(a[0]); // 배열의 크기 계산
    int result = BinarySearch(a, searchKey, 0, n - 1); // 수정된 매개변수 순서로 호출
    if (result != -1)
        printf("%d는 배열의 %d번째 위치에 있습니다.\n", searchKey, result + 1);
    else
        printf("%d는 배열에 존재하지 않습니다.\n", searchKey);
    return 0;
}

int BinarySearch(int list[], int searchKey, int left, int right) {
    if (right >= left) {
        int mid = left + (right - left) / 2;

        if (list[mid] == searchKey) // 찾은 경우
            return mid;
        else if (list[mid] > searchKey) // 중간값이 더 큰 경우 왼쪽 탐색
            return BinarySearch(list, searchKey, left, mid - 1);
            
        // 그렇지 않으면 오른쪽 탐색
        return BinarySearch(list, searchKey, mid + 1, right);
    }
    // 찾지 못한 경우
    return -1;
}
