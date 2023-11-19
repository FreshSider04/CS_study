# 클래스
# 클래스의 골격! 시험에 자주 나온다.
# 파이썬의 기본골격은 이와 같이 구성한다.
class Greet():
    # 클래스만 호출 시에 기본 출력되는 것(특수 메소드)
    def __init__(self):
        print("안녕하세요.")
    def hello(slef):
        print("hello")
    def hi(self):
        print("hi")

himan1 = Greet()



import random as rd

random_number = rd.randint(1, 100)

game_count = 1

while True:
    try:
        my_number = int(input("1~100 사이의 숫자를 입력하시오 : "))
        
        if my_number > 100:
            raise Exception("수를 100 초과로 입력하셔습니다.")

        if my_number > random_number:
            print("다운")
        elif my_number < random_number:
            print("업")
        elif my_number == random_number:
            print(f"축하합니다. {game_count}회 만에 맞췄습니다.")
            break
        game_count = game_count + 1

    except Exception as e:
        print(f"에러 메세지 : {e}")


