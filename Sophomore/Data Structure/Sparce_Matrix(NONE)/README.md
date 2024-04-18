# 희소행렬
- 행렬의 값이 대부분 0인 경우를 가리키는 표현

# 1. transpose matrix 알고리즘
### ✅ 개념
![alt text](img\image.png)
![alt text](img\image-1.png)

**알고리즘의 작동순서를 알아보면 다음과 같다 :**   
**외부 for 루프(for(int i = 0; i < a[0].col; i++))** 는 a 행렬의 열을 반복합니다. 여기서 a[0].col은 a 행렬의 열의 총 수를 나타냅니다.   

**내부 for 루프(for(int j = 1; j <= n; j++))** 는 a 배열의 각 원소를 순회합니다. 여기서 n은 a 배열에 실제로 저장된 원소의 수입니다.   

**내부 if 문(if(a[j].col == i))** 은 현재 열 i에 해당하는 a 배열의 원소를 찾습니다. 즉, a[j].col == i 조건을 만족하는 a[j] 원소는 현재 처리 중인 열에 속하는 원소입니다.   

**조건을 만족하는 원소를 찾으면,** 이 원소의 행과 열을 바꾸어 b 배열에 저장합니다(b[currentB].row = a[j].col; b[currentB].col = a[j].row;). 이 과정이 바로 전치 과정입니다. 또한, 원소의 값(value)도 b 배열의 해당 위치에 복사됩니다.   

currentB 인덱스는 b[] 배열에서 다음 저장 위치를 가리키도록 증가됩니다(currentB++;).

# 2. Fast transpose matrix 변형 알고리즘
### ✅ 개념
![alt text](img\image-2.png)
- 각 column이 저장될 곳을 미리 파악하는 방법
    - row_terms : 원 행렬에서, 0이 아닌 값을 가진 열들이, 각각 몇 번 나오는 지 저장
        - index 의미 : 원행렬에서 0이 아닌 값들을 가지고 있는 열의 index
    - starting_pos : 자기 앞 열들이 몇 번 나오는지 저장
        - 원행렬 index에는 row_terms 만큼 값을 가지고 있어 다음 시작하는 열을 알려줌
- column index 저장을 위한 추가적인 공간이 필요
- 메모리에선 이전보다 손해를 보지만 시간 복잡도는 내려가는 효과를 보는 방법