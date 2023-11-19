import csv
import requests 
from bs4 import BeautifulSoup
import os
from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager

filename = '웹툰순위.csv'
f = open(filename, 'w', encoding="utf-8-sig", newline="") 
writer = csv.writer(f)
columns_name = ['순위', '웹툰명']

url = 'https://comic.naver.com/index'
headers = {'User-Agent' :'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36'}
res = requests.get(url, headers=headers)
res.raise_for_status()

soup = BeautifulSoup(res.text, 'lxml')
# print(soup.prettify())
cartoonBox = soup.find('div', attrs={"id":"root"})
print(cartoonBox)

driver = webdriver.Chrome(ChromeDriverManager().install())
driver.maximize_window()
driver.implicitly_wait(10)

driver.get(url) 

test = driver.find_element_by_class_name('component_wrap')
print(test.text)

# # cartoons = cartoonBox.

# /html/body/div/div/div[3]/div[3]/div[2]/div[2]/ul



