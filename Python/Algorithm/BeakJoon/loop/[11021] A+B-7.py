num = int(input())

for i in range(1, num  + 1):
    Finput, Sinput = map(int, input().split())
    print("Case #{0}:".format(i), Finput + Sinput)