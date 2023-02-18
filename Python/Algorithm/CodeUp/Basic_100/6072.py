num = int(input())

print(num)
while num != 1:
    mnum = num - 1
    print(mnum)
    num = mnum
    if num == 1:
        break
