import socket
import os

# local host : 127.0.0.1
in_addr = socket.gethostbyname(socket.gethostname())

print(in_addr)
# os.system('ipconfig -all')

# # 기본 포트 번호 외우기 
in_addr = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
in_addr.connect(('www.google.com', 443))
print(in_addr.getsockname()[0])

import requests
import re

req = requests.get("http://ipconfig.kr")
print(req.text)
# out_addr = re.search(r'IP Address : (\d{1,3}\.\d{1,3}\.d{1,3}\.\d{1,3})', req.text)[1]
print(out_addr)

# 1번
import socket
import requests
import re

in_addr = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
in_addr.connect(('www.google.com', 443))
print("내부 IP ", in_addr.getsockname()[0])

req = requests.get("http://ipconfig.kr/")
out_addr = re.search(r'IP Address : (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})', req.text)[1]
print("외부 IP: ", out_addr)

# 2번 :TTS
from gtts import gTTS
from playsound import playsound
import os

os.chdir(os.path.dirname(os.path.realpath(__file__)))

file_path = "나의텍스트.txt"

with open(file_path, "r", encoding="UTF8") as f:
    read_file = f.read()

tts = gTTS(text=read_file, lang='ko')

tts.save("myText.mp3")
