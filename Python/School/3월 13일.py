# 3월 13일 수업
name = "kim"
city = "ulsan"
x = 13214
y = 3
z = 3.141592

print(f"나는 {city}에 살고있는 {name}입니다.")
print(f"x+y={x +y} | x * y = {x*y}")
print(f"x의 값은 {x:^10d}")
print("z의 값은 {z:^2f}")

print(f"예1는 {1232:10d}")
print(f"예2는 {123.567:7.2f}")
# ""문이면 {}안에는 '', ""문이면 {}안에는 ''로 사용하지 않으면 에러가 뜬다.
print(f"예3은 {'python':10s}")

name1 = "kim"
# {{{}}}는 중괄호 후 값 출력 
r = f'my name is {{{name1}}}, {{name1}}'
print(r)

year = 2022 ; month = 5; day = 3
print("반갑습니다")
print("오늘은", year, "년", month, "월", day, "일입니다")
print(f"오늘은 {year}년 {month}월 {day}일 입니다")

# 변수
a = int(100)
_b = int(200)
s = _b + a
print (s)

# 변수타입
print(type(a))
print(id(a))

q, w, e = 1, 2, 3
print(q, w, e)

i = j = k = 11
print(i, j, k)

nalee = 12
py = "python"
print(nalee, py)

# del은 변수값 제거
# print(nalee, py)
# del py
# print(py, nalee)

PI = 3.14
RATE = 0.03
r = 5
money = 1000000
o = PI * r ** 2
print("원의 넓이 : %7.2f" % o)
print(f"예금이자 : {money * RATE:10,}")