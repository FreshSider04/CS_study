# 윤년 == 연도가 4의 배수 and != 연도가 100의 배수가 아닐떄
# 윤년 == 또는 400배의 배수

year = int(input())

if year % 4 == 0 and year % 100 != 0:
    print("1")
elif year % 400 == 0:
    print("1")

else:
    print("0")