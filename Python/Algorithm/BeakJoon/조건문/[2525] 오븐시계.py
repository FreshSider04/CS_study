H, M = map(int, input().split())
MakingtTime = int(input())

minute = M + MakingtTime

if MakingtTime >= 60:
    share = minute // 60

    minute -=  share * 60 
    H += share - 1

if M + MakingtTime >= 60:
    if H == 23:
        H = 0
    else:
        H += 1

if minute >= 60:
    minute -= 60
    
print(H, minute)