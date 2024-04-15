#include <stdio.h>
#define MAX_TERMS 101

typedef struct {
	int row;
	int col;
	int value;
} term;

term a[MAX_TERMS];

void transpose(term a[], term b[]){
	int n, currentB;

	// 전치행렬 b의 row, col, value
	n = a[0].value; //총 element수
	b[0].row = a[0].col;
	b[0].col = a[0].row;
	b[0].value = n;
	
	if(n > 0) { // 0이 아닌 원소가 있는 경우에만 전치 연산 수행

		//0번째는 기본적인 행렬의 정보을 가지고 있으므로 1부터 시작
		currentB = 1;

		for(int i = 0; i < a[0].col; i++)
		{ 
			for(int j = 1; j <= n; j++)
			{
				// 열을 기준으로 정렬한다.
				if(a[j].col == i)
				{ 
					b[currentB].row = a[j].col;
					b[currentB].col = a[j].row;
					b[currentB].value = a[j].value;
					currentB++;
				}
			}
		}
	}
}

int main(void) {
    // !! a[0]에는 통계값을 집어넣어야 함.
    // a[0]에 들어가는 col과 row는 index가 아닌 갯수로 들어가야함
    term a[4] = { {3,4,3}, {0,0,1}, {1,2,5}, {2,3,7} };
    term b[4];
	
	//원행렬 출력
	printf("index   row   col   value\n");
    printf("--------------------------\n");
    for (int i = 0; i < 4; i++)
    {
        printf(" a[%d] |  %d     %d     %d\n", i, a[i].row, a[i].col, a[i].value);
    }
    printf("\n\n");
    
	//변형 알고리즘 적용
	transpose(a,b);
	
	printf("\n\n");
    printf("Transpose processing has been finished.\n");
    printf("\n\n");

    printf("index   row   col   value\n");
    printf("--------------------------\n");
    for (int i = 0; i < 4; i++)
    {
        printf(" b[%d] |  %d     %d     %d\n", i, b[i].row, b[i].col, b[i].value);
    }
    printf("\n\n");

    
	return 0;
}