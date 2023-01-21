# 반복문(while문)
treeHit = 0

while treeHit < 10:
     treeHit = treeHit + 1
     print("나무를 %d번 찍었습니다." % treeHit)
     if treeHit == 10:
         print("나무 넘어갑니다")
         
# 반복문(for문)
test_list = ["one", "two", "three"]

for i in test_list:
# test_list라는 리스트에 i를 하나씩 대입
    print(i)

number = [(1, 2), (3, 4), (5, 6)]

for (first, last) in number:
# first하고 last를 a를 하나씩 대입
    print(first + last)
# range(()에서 ~이상 ~ 미만을 의미한다)
for i in range(1, 10):
    print(i)

# for의 활용형(이중 for문)
for i in range(2,10):
    for j in range(1, 10):
        # 여기서 end =" "는  한 줄 엔터를 방지한다!
        print(i * j, end=" ")
    print('')

# 리스트의 내표
result = [x * y for x in range(2, 10) for y in range(1, 10)]
# 세부적인 설명
# result = []
# for x in range(2, 10):
#     for y in range(2, 10):
#         result.append(x * y)