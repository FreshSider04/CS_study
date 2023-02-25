H, M = map(int, input().split())
MakingTime = int(input())

hour = (M + MakingTime) // 60
min = (M + MakingTime) % 60

if M + MakingTime >= 60:
    if H + hour >= 24:
        H -= 24
    H = H + hour
    print(H, min)

else:
    if H > 24:
        H -= 24
    print(H, M + MakingTime)