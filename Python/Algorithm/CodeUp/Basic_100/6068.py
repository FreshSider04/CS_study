inint = int(input())

if inint > 100:
    print("ERROR:Write under 100")
else:
    if inint >= 90:
        print("A")
    else:
        if inint >= 70:
            print("B")
        else:
            if inint >= 60:
                print("C")
            else:
                print("D")
