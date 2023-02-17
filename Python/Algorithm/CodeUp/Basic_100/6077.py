num = int(input())

# 첫번쨰 풀이 (이중for문)
# hap = 0

for i in range(1, num + 1):
    if i % 2 == 0:
        hap += i

print(hap)

# 두번쨰 (while)
hap2 = 0
count = 1
while hap2 <= num:
    hap2 = hap2 + 1

print(hap2)