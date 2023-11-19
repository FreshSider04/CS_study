# thread
# ctrl + c = main thread만 종료됨
import threading
import time

def tread_1():
    while True:
        print("thread 1")
        time.sleep(1.0)

t1 = threading.Thread(target=tread_1)
# main thread가 종료되면 같이 종료됨 (매우 중요!!)
t1.daemon = True
t1.start()

while True:
    print("main thread")
    time.sleep(2.0)