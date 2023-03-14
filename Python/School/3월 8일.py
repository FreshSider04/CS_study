# 주석 다는 법
# 안녕하세요 이것은 주석입니다.

"""
안녕하세요 이것은 주석입니다
"""
print("Hi python")
print("'hello world!'")
print("\"Hi python\"")
print("hi" * 100)
print('하나\n둘\n셋 \n')
print(1, 2, 3, sep=", ")
print("우리는 ", " 대한민국 ", " 국민", sep="/")
print("파이썬 ", end= ">>>")
print(" 프로그램")
print("\t탭 \t 연습")
print("우리는" + "납니다")
print("우리는", "파이썬을", "싫어합니다")
print("\"강조\"효과")

# 변수
who = "울산대학교"
what =  "파이썬 프로그래밍"
where =  "19호관"
when = "3월 8일"

print(who + "에서", what + "을 모집합니다")
print('장소는', where, "입니다")
print("날짜는", when, "입니다 \n")

print("%s에서 %s을 모집합니다" %(who, what))
print("장소는 %s입니다" %(where))
print("날짜는 %s 입니다\n" %(when))
# 포멧팅
print("%s에서 %s을 모집합니다" %(who, what))
print("장소는 %s입니다" %(where))
print("날짜는 %s 입니다\n" %(when))

print("{}에서 {}을 모집합니다".format(who, what))
print("장소는 {}입니다".format(where))
print("날짜는 {} 입니다\n".format(when))

print("이름은 %s, 나이는 %d세 입니다"%("홍길동", 19))
print("hello. {0}".format("ulsan"))
print("hello. {0}, hi {1}".format("ulsan", "young ho"))
print("hello. {}, hi {}, {}".format("ulsan", "young ho", "man"))
#     7칸.소수점(크기)
print("%0.3f" %(123.29012))
print("%1.3f" %(123.29012))
print("%1s" %("ojkhfadjkfhajkdf"))

# 진수변환


