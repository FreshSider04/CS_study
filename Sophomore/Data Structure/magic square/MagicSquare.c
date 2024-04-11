#include <stdio.h>
#include <stdlib.h>
#define MAX_SIZE 15

int main(){
	int square[MAX_SIZE][MAX_SIZE];
	int i,j,row,col;
	int count;
	int size;

    // 매직 스퀘어 사이즈 입력
	printf("Enter the size of the square: ");
	scanf("%d",&size);

    // 사이즈가 1보다 작거나 15보다 크면 오류
	if(size < 1 || size > MAX_SIZE +1){
		fprintf(stderr, "Size is out of range\n");
		exit(EXIT_FAILURE);
	}

	if(!(size%2)){
		fprintf(stderr,"Size is even\n");
		exit(EXIT_FAILURE);
	}


	for(i = 0; i < size; i++)
		for(j = 0;j < size; j++)
			square[i][j] = 0;
	
	square[0][(size-1)/2] = 1;
	i = 0;
	j = (size-1)/2;

	for(count = 2; count <= size*size; count++){
		row = (i-1<0) ? (size -1):(i-1);
		col = (j-1<0) ? (size -1):(j-1);
		if(square[row][col])
			i = (++i) % size;
		else{
			i = row;
			j = (j-1<0) ? (size -1):--j;
		}
		square[i][j] = count;
	}
	printf("Magic Square of size = %d : \n\n",size);
	for(i = 0; i < size; i++){
		for(j = 0; j < size; j++)
			printf("%5d",square[i][j]);
		printf("\n");
	}

	printf("\n\n");
	return 0;
}