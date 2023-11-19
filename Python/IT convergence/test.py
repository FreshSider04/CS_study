list1 = [1, 5, 2, 7, 9]
list1sort = list1.sort()
print(list1sort)
print(list1)

list2 = [1, 5, 2, 7, 9]
list2sort = sorted(list2)
print(list2sort)

list1 = [1, 5, 2, 7, 9]
list1sort = list1.sort()
print(list1sort)
print(list1)

list2 = [1, 5, 2, 7, 9]
list2sort = sorted(list2)
print(list2sort)

squares = [x*x for x in range(10)]
for i in range(0, len(squares)):
    print(i, end=", ")

squares = [x*x for x in range(10) if x % 2 == 0]
for i in range(0, len(squares)):
    print(i, end=", ")

prices = [135, -545, 922, 356, -922, 217]
mprices = [i if i > 0 else 0 for i in prices]
for i in range(0, len(mprices)):
    print(i, end=", ")

words = ["All", "good", "thing", "must", "come", "to", "an", "end."]
letter = [w[0] for w in words]
for i in range(0, len(letter)):
    print(i, end=", ")

numbers = [x+y for x in ['a', 'b', 'c'] for y in ['x', 'y', 'z']]
for i in range(0, len(numbers)):
    print(i, end=", ")

list1 = [10, 20, 30, 40, 50]
list2 = [sum(list1[0:x+1]) for x in range(0, len(list1))]

print("원래 리스트", list1)
print("새로운 리스트", list2)