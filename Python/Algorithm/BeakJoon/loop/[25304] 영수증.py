allvalue = int(input())
num = int(input())

plusvalue = 0

for i in range(1, num + 1):
    eachvalue, eachnum = map(int, input().split())
    comparisonvalue = eachvalue * eachnum
    plusvalue += comparisonvalue
    
if plusvalue == allvalue:
    print("Yes")
else:
    print("No")