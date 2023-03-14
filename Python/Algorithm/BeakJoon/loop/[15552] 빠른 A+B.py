import sys

num = int(sys.stdin.readline())

for i in range(1, num + 1):
    Finput, Sinput = map(int, sys.stdin.readline().split())
    print(Finput + Sinput)
