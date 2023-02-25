X = int(input())
Y =  int(input())

# X가 (+), Y가 (+) == 제 1사분면
# X가 (-), Y가 (+) == 제 2사분면
# X가 (-), Y가 (-) == 제 3사분면
# X가 (+), Y가 (-) == 제 4사분면

if (X > 0) and (Y > 0):
    print("1")

elif (X < 0) and (Y > 0):
    print("2")

elif (X < 0) and (Y < 0):
    print("3")
    
elif (X > 0) and (Y < 0):
    print("4")