alphabet = ord(input())
basic = ord("a")

print("a", end=" ")

while alphabet > basic:
    basic = basic + 1

    print(chr(basic), end=" ")

    if alphabet == basic:
        break