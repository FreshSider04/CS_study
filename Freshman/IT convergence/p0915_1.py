# 1부터 입력받은 숫자까지 더하기 프로그램

# 방법1
in_num = int(input("1부터 N까지 더하실 N값을 입력해 주시오 : "))

hap = 0

for i in range(1, in_num + 1):
    hap = hap + i

print(hap)

# 방법 2
indata = int(input("1부터 N까지 더하실 N값을 입력해 주시오 : "))

hap2 = sum([x for x in range(1, indata +1)])
print(hap2)

# 입력 받은 숫자가 13일 때
# 그 숫자까지 홀수의 합과 짝수의 합을 구하는
# 프로그램을 작성하시오

# 방법 2
two = 0
one = 0

for i in range(1, 13):
    if i % 2 == 0:
        two = two + i
    else:
        one = one + i

print("홀수 합 :", one)
print("짝수 합 :", two)

# 방법 1
홀수합 = 0
짝수합 = 0

for i in range(1, 13, 2):
    홀수합 += i
for i in range(0, 13, 2):
    짝수합 += i

print(f'홀수합은 {홀수합}')
print(f'짝수합은 {짝수합}')

# 방법 3
l1 = sum([i for i in range(0, 13) if i % 2 == 0])
l2 = sum([i for i in range(0, 13) if i % 2 != 0])
print(l1)
print(l2)

# 복소수 연습
복소수1 = 2 + 3j
print(복소수1, type(복소수1))
print(복소수1.real, 복소수1.imag, abs(복소수1))

# [start:end:step]
# l = [10, 20, 30, ..., 90];
# l[:1] 맨 마지막 하나만 뺴고 출력 = [10, 20, 30, 40, ... , 80]
# l[::-1] 역순으로 출력 = [90, 80, 70, 60, ...]
# l[:-1]과 ㅣ[::-1]의 차이점

# 리스트 연습
list1 = [1, 5, 2, 7, 9]
list1sort = list1.sort()
print(list1sort)
print(list1)

list2 = [1, 5, 2, 7, 9]
list2sort = sorted(list2)
print(list2sort)

squares = [x*x for x in range(10)]
for i in range(0, len(squares)):
    print(i, end=", ")

squares = [x*x for x in range(10) if x % 2 == 0]
for i in range(0, len(squares)):
    print(i, end=", ")

prices = [135, -545, 922, 356, -922, 217]
mprices = [i if i > 0 else 0 for i in prices]
for i in range(0, len(mprices)):
    print(i, end=", ")

words = ["All", "good", "thing", "must", "come", "to", "an", "end."]
letter = [w[0] for w in words]
for i in range(0, len(letter)):
    print(i, end=", ")

numbers = [x+y for x in ['a', 'b', 'c'] for y in ['x', 'y', 'z']]
for i in range(0, len(numbers)):
    print(i, end=", ")

list1 = [10, 20, 30, 40, 50]
list2 = [sum(list1[0:x+1] for x in range(0, len(list1)))]

print("원래 리스트", list1)
print("새로운 리스트", list2)

# 실수 몫
print(5/3)
# 정수 몫
print(5//3)


