#include <stdio.h>

// data : Ž���� ������������ ���ĵ� ���� �迭
// n : ���� �迭�� ũ��
// key : ã�����ϴ� ��
int binsearch(int data[], int n, int key) {
    int low, high;
    int mid;

    // �迭�� �ּڰ�
    low = 0;
    // �迭�� �ִ�
    // ������, �ε����� 0���� ī��Ʈ �ϹǷ� -1
    high = n - 1;

    while (low <= high) {
        mid = (low + high) / 2;

        //Ž�� ����
        if (key == data[mid]) {
            return mid;        
        }
        //Ž�� ������ �Ʒ�������
        else if (key < data[mid]) {
            high = mid - 1;
        }
        //Ž�� ������ ��������
        else if (key > data[mid]) {
            low = mid + 1;
        }
    }
    // Ž�� ����
    return -1;
}

 
int main(void)
{
    //���ĵ� �ڷ�
    int a[] = { 2, 8, 13, 16, 20, 22, 34, 45, 56, 77 };
    int index;
    int key;
 
    scanf("%d", &key);
    // binary(Array, index, key)
    index = binsearch(a, 10, key);
    if (index == -1) {
        printf("�ڷᰡ �����ϴ�!\n");
    }
    else {
        printf("�ڷᰡ %d��°�� �ֽ��ϴ�.\n", index + 1);
    }
    return 0;
}