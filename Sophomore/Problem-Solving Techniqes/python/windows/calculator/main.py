from tkinter import *

def btn_click(item):
    global expression
    expression = expression + str(item)
    input_text.set(expression)

def bt_clear(): 
    global expression 
    expression = "" 
    input_text.set("")

def bt_equal():
    global expression
    try:
        result = str(eval(expression)) # 'eval'을 사용하여 문자열 수식 계산
        input_text.set(result)
        expression = ""
    except:
        input_text.set(" ERROR ")
        expression = ""

if __name__ == "__main__":
    # 프로그램 시작
    app = Tk()
    app.title("Calculator")
    app.geometry("314x325")
    app.resizable(width=False, height=False)

    expression = ""
    input_text = StringVar()

    # 입력 필드
    input_frame = Frame(app, width=220, height=50, bd=0, highlightbackground="black", highlightcolor="black", highlightthickness=2)
    input_frame.pack(side=TOP)
    input_field = Entry(input_frame, font=('arial', 18, 'bold'), textvariable=input_text, width=50, bg="#eee", bd=0, justify=RIGHT)
    input_field.grid(row=0, column=0)
    input_field.pack(ipady=10)

    # 버튼 프레임
    btns_frame = Frame(app, width=312, height=272.5)
    btns_frame.pack()
    
    # 첫 번째 줄
    clear = Button(btns_frame, text="C", fg="black", width=10, height=3, bd=0, bg="#eee", cursor="hand2", command=bt_clear).grid(row=0, column=0, padx=1, pady=1)
    left_parenthesis = Button(btns_frame, text="(", fg="black", width=10, height=3, bd=0, bg="#eee", cursor="hand2", command=lambda: btn_click("(")).grid(row=0, column=1, padx=1, pady=1)
    right_parenthesis = Button(btns_frame, text=")", fg="black", width=10, height=3, bd=0, bg="#eee", cursor="hand2", command=lambda: btn_click(")")).grid(row=0, column=2, padx=1, pady=1)
    divide = Button(btns_frame, text="/", fg="black", width=10, height=3, bd=0, bg="#eee", cursor="hand2", command=lambda: btn_click("/")).grid(row=0, column=3, padx=1, pady=1)

    # 두 번째 줄
    button7 = Button(btns_frame, text="7", fg="black", width=10, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(7)).grid(row=1, column=0, padx=1, pady=1)
    button8 = Button(btns_frame, text="8", fg="black", width=10, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(8)).grid(row=1, column=1, padx=1, pady=1)
    button9 = Button(btns_frame, text="9", fg="black", width=10, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(9)).grid(row=1, column=2, padx=1, pady=1)
    multiply = Button(btns_frame, text="x", fg="black", width=10, height=3, bd=0, bg="#eee", cursor="hand2", command=lambda: btn_click("*")).grid(row=1, column=3, padx=1, pady=1)

    # 세 번째 줄
    button4 = Button(btns_frame, text="4", fg="black", width=10, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(4)).grid(row=2, column=0, padx=1, pady=1)
    button5 = Button(btns_frame, text="5", fg="black", width=10, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(5)).grid(row=2, column=1, padx=1, pady=1)
    button6 = Button(btns_frame, text="6", fg="black", width=10, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(6)).grid(row=2, column=2, padx=1, pady=1)
    minus = Button(btns_frame, text="-", fg="black", width=10, height=3, bd=0, bg="#eee", cursor="hand2", command=lambda: btn_click("-")).grid(row=2, column=3, padx=1, pady=1)

    # 네 번째 줄
    button1 = Button(btns_frame, text="1", fg="black", width=10, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(1)).grid(row=3, column=0, padx=1, pady=1)
    button2 = Button(btns_frame, text="2", fg="black", width=10, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(2)).grid(row=3, column=1, padx=1, pady=1)
    button3 = Button(btns_frame, text="3", fg="black", width=10, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(3)).grid(row=3, column=2, padx=1, pady=1)
    plus = Button(btns_frame, text="+", fg="black", width=10, height=3, bd=0, bg="#eee", cursor="hand2", command=lambda: btn_click("+")).grid(row=3, column=3, padx=1, pady=1)

    # 다섯 번째 줄
    button0 = Button(btns_frame, text="0", fg="black", width=21, height=3, bd=0, bg="#fff", cursor="hand2", command=lambda: btn_click(0)).grid(row=4, column=0, columnspan=2, padx=1, pady=1)
    equal = Button(btns_frame, text="=", fg="black", width=21, height=3, bd=0, bg="#eee", cursor="hand2", command=bt_equal).grid(row=4, column=2, columnspan=2, padx=1, pady=1)

    app.mainloop()
