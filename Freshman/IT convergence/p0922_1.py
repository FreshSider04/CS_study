# 조건문(if)
a = 1; b = 2

if a > b:
    print("a가 크다.")
elif a < b:
    print("b가 크다")
else:
    print("같다.")

max1 = a if a > b else b
print(max1)

# 삼항연산자는 이와 같이 동작한다.

if a > b:
    max1 = a;
elif a < b:
    max1 = b;
print(max1);

# for
name_list = ['홍길동', '장다인', '김철수']
age_list =  [500, 5, 12]

# 공부!
for i, k in enumerate(name_list):
    print("i = ", i, end = " ");
    print("k = ", k);

# dict1 = {'a':100, 'b':95, 'c':80, 'd':75}

# 왜 에러 나지...?

# for k, v in dict.items():
#     print(k, v)

# for i in dict1:
#     print(i, dict1)


tuple1 = (10, 20, 30);

for i in tuple1:
    print(i);

# set : 중복값 삭제
set1 = {1, 2, 1, 2, 3, 4, 1, 2, 1, 2, 3, 1, 2}

# 그래서 1, 2, 3, 4를 제외하고 삭제 후 출력
for i in set1:
    print(i);

print("set1 : ", set1);

# 암기!
# try: ~
# 시도문
try:
    print(3/0);
# 오류 발생시 처리
except Exception as e:
    print(e);
# try절의 성공 유무와 관계 없이 무조건 실행
finally:
    print("Always");

# function
# very importment
#  *args = 복수의 수를 입력받기 위함

def f1(a, *args, **kwargs):
    print(a);
    print(args);  # 튜플
    print(kwargs); # 딕셔너리
    print(type(args));  # 튜플
    print(type(kwargs)); # 딕셔너리

# a =1, arg = 20, 30, 40, kwarg = 1, 2, 3
f1(1, 20, 30, 40, aa=1, bb=2, cc=3);

a = 1; b =2; c = 3

tuple1 = (a, b, c) # 패킹
(aa, bb, cc) = tuple1 # 언패킹

x = 3; y = 5
# C언어 사용 시 변수 변환
# temp = x;
# x = y;
# y = temp;

# 파이썬 사용 시 변수 변환
print(x, y);
x, y = y, x;
print(x, y);

def f2():
    return 1, 2, 3;

tuple2 = f2();
print(tuple2);
print(type(tuple2));






