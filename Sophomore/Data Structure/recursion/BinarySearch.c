#include <stdio.h>

int BinarySearch(int list[], int searchKey, int left, int right);

int main(void) {
    int a[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int searchKey = 2;
    int n = sizeof(a) / sizeof(a[0]); // �迭�� ũ�� ���
    int result = BinarySearch(a, searchKey, 0, n - 1); // ������ �Ű����� ������ ȣ��
    if (result != -1)
        printf("%d�� �迭�� %d��° ��ġ�� �ֽ��ϴ�.\n", searchKey, result + 1);
    else
        printf("%d�� �迭�� �������� �ʽ��ϴ�.\n", searchKey);
    return 0;
}

int BinarySearch(int list[], int searchKey, int left, int right) {
    if (right >= left) {
        int mid = left + (right - left) / 2;

        if (list[mid] == searchKey) // ã�� ���
            return mid;
        else if (list[mid] > searchKey) // �߰����� �� ū ��� ���� Ž��
            return BinarySearch(list, searchKey, left, mid - 1);
            
        // �׷��� ������ ������ Ž��
        return BinarySearch(list, searchKey, mid + 1, right);
    }
    // ã�� ���� ���
    return -1;
}
