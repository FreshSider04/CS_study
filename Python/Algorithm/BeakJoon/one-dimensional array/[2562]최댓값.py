list1 = []

for i in range(1, 10):
    inn = int(input())
    list1.append(inn)

print(max(list1))
print(int(list1.index(max(list1))) + 1)
