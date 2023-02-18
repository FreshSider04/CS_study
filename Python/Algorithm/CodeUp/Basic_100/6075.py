num = int(input())
zero = 0

# input값이 0일떄 안나오는 현상 해결
if num == zero:
    print(num)

while num != zero:
    print(zero)
    zero += 1
    
    if num == zero:
        print(num)