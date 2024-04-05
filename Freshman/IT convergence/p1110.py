import requests
import re

url = 'https://news.v.daum.net/v/20211129144552297'

UserAgent = 'User-Agent'

headers = {
    UserAgent: 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36',
    'Content-Type': 'text/html; charset=utf-8'
    }

response = requests.get(url, headers=headers)
response.raise_for_status()

with open('re.html', 'w', encoding='utf-8') as f:
    f.write(response.text)

results = re.findall(r'[\w\.-]+@[\w\.-]+', response.text)

results = list(set(results))

print(results)
