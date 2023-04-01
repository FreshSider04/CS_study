from math import *

R = float(input())

us = float((R**2) * pi)
ts = float(2 * (R ** 2))
# 유클리드 원 넓이
print(f'{us:.6f}')
# 택시 기하학 원 넓이
print(f'{ts :.6f}')