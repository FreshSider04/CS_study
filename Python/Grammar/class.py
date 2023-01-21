# 클래스란?
# 반복되는 변수 & 메서(함수)를 미리 정해놓은 설계
result = 0
def add(num):
    global result
    result += num
    return result

print(add(3))
print(add(4))
# 위의 코드를 보면 중첩되어서 사용되는데 이를 분라하려면 2개의 함수를 사용해야만 하고 이를 해결하기 위해 클래스가 생긴것!
# 똑같은 함수를 여러번 써야하니까 반복적으로 사용하게 만들어주는 것!(함수의 반복문)
# 클래스 네임의 앞은 대문자가 정석!

# 예시1
class Calculator:
    # 클래스 생성 시의 변수
    # 예약어의 기능(무조건 먼저 실행되는 조건)
    def __init__(self):
        self.result = 0
    
    # 함수
    def add(self, num):
        self.result += num
        return self.result

# self라는 인자는 cal1, cal2라는 객체에 대입된다.
cal1 = Calculator()
cal2 = Calculator()

print(cal1.add(3))
print(cal1.add(4))

print(cal2.add(3))
print(cal2.add(10))

# 에시2
class FourCal:
    def __init__(self, first, second):
        self.first = first
        self.second = second
        
    def add(self):
        result1 = self.first + self.second
        
        return result1
    
b = FourCal(37, 48)

print(b.add())

# 클래스의 상속(추가기능 만들기)
# 부모클래스를 이용해서 자식클래스 만들기
# 부모클래스 변형시 자식먼저! (오버라이딩)
class MoreFourCal(FourCal):
    def sub(self):
        result1 = self.first - self.second
        return result1

b = MoreFourCal(4, 2)
print(b.sub())
