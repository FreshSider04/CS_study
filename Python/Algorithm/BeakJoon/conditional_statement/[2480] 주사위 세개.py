Fdice, Sdice, Tdice = map(int, input().split())

if Fdice == Sdice == Tdice:
    value = 10000 + (Fdice * 1000)
    print(value)

elif Fdice == Sdice:
    value = 1000 + (Fdice * 100)
    print(value)
elif Fdice == Tdice:
    value = 1000 + (Fdice * 100)
    print(value)
elif Sdice == Tdice:
    value = 1000 + (Sdice * 100)
    print(value)

elif Fdice != Sdice != Tdice:
    bigest = max(Fdice, Sdice, Tdice)
    value = bigest * 100
    print(value)
