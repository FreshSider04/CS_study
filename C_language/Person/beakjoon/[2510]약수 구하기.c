#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>
int main()
{
	int N, K, count = 0;              //count를 0으로 초기값 설정

	scanf("%d %d", &N, &K);

	for (int i = 1; i <= N; i++)   //n은 1이상 10000이하다.
	{
		if (N%i == 0)                 //약수 구분
		{
			count++;                  //count를 1 더한다.
		}
		if (K == count)               //만약 k가 count와 같다면 출력 후 종료.
		{ 
			printf("%d\n", i);
			return 0;
		}
	}
}