import pyautogui
import pyperclip
import time
import threading
import os

# 경로를 .py 파일이 있는 경로로 설정, 즉 현재 경로
os.chdir(os.path.dirname(os.path.abspath(__file__)))

def send_message():
    threading.Timer(10, send_message).start()

    picPosition = pyautogui.locateOnScreen('pic1.png')
    print(picPosition)

    if picPosition is None:
        picPosition = pyautogui.locateOnScreen('pic2.png')
        print(picPosition)

    if picPosition is None:
        picPosition = pyautogui.locateOnScreen('pic3.png')
        print(picPosition)

    if picPosition is not None:
        clickPosition = pyautogui.center(picPosition)
        pyautogui.doubleClick(clickPosition)

        pyperclip.copy("이 메시지는 10초마다 자동으로 보내집니다.")
        pyautogui.hotkey("ctrl", "v")
        time.sleep(1.0)

        pyautogui.press(["enter"])
        time.sleep(1.0)

send_message()

