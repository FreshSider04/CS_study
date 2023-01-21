# 함수 
# 함수라고 입, 출력값이 무조건 있다고 생각말것!
# return값이 없고 이 함수를 출력시키면 None이라고 뜨는데 출력값이 없음
# 인자 안에 기본 값을 설정할 수 있음!
def sum(a, b):
    # function process
    result = a +b
    #  return  == output value
    return result
# 함수 호출
print(sum(1, 2))

# ++ 여러 인자를 한 번에 받는 법!
# args / *args
# 때로는 star / *star를 쓰기도 한다! 하자만
# 때로는 star / *star를 쓰기도 한다! 하자만 위가 관습적
def sum_many(*args):
    sum = 0
    for i in args:
        sum = sum + i
    return sum
print(sum_many(1, 2, 3))
# kwargs / **kwargs는 딕셔너리 상의 많은 인자를 받는 방법의 일종
def print_kwargs(**kwargs):
    for k in kwargs.keys():
        if(k ==  "name"):
            print("당신의 이름은 : " + k )

print(print_kwargs(name = "파이썬",b = 2))