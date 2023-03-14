num = int(input())

for i in range(1, num + 1):
    F, S = map(int, input().split())
    # 문자열 포멧팅
    print(f'Case #{i}: {F} + {S} = {F+S}')
