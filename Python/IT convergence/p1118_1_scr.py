
import requests
from bs4 import BeautifulSoup

headers = {'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36'}

url = 'http://naver.com'

res = requests.get(url, headers=headers)
res.raise_for_status()
print(res.status_code)
# print(res.text)

with open('nacerRe.html', 'w', encoding='utf-8') as f:
    f.write(res.text)
soup = BeautifulSoup(res.text, 'lxml')
print(soup.text)
