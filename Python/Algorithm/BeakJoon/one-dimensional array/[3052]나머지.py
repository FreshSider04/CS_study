N = []
for _ in range(10):
    a = int(input())
    b = a % 42
    N.append(b)

s = set(N)
print(len(s))