# 문자열 포멧팅(편하려고..) %d는 숫자 %f는 실수 %s는 문자열
c = "I ate" + str(3) + "apples"
d = "I ate %d apples" %38924

e = "I ate %d apples and I will go %s" %(35478, "busan")

f = "safklakld {name} flkfj {age}".format(name = "나", age = "48923")
print(d)
print(e)
print(f)

# + 이외에도 많은 이스케이프 코드가 있다!