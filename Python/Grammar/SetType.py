# 집합자료형
# 가장 큰 특징은 중복을 제거한다!
s1 = set([1, 2, 3])
s2 = {1, 2, 3}
# 여집합
print(s1 & s2)
print(s1.intersection(s2))
# 합집합
print(s1 | s2)
print(s1.union(s2))
# 차집합
print(s1 - s2)
# 집합 추가
s1.add(32)
s1.update([7, 8, 9])