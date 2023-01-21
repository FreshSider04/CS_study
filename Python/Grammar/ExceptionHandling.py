# 예외 처리란
# 오류가 발생했음에도 불구하고 이를 생략하고 작성하는 방법이다.
try:
    # 오류가 발생가능한 구문
    4 / 0
#      에러 이름        e에 담김
# 에러명이 뭔지 잘 모를 떄 Exception으로 ㄱㄱ
except ZeroDivisionError as e:
    # 오류 발생할 시
    print(e)
    
else:
    # 오류 발생하지 않을 시
    print(4 / 0)
    
finally:
    # 마지막으로 실행되어야하는 부분
    print("4/0의 실행 결과입니다")