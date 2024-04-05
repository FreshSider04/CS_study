# 환율 변환기
from currency_converter import CurrencyConverter

cc = CurrencyConverter()
print(cc.currencies)

cc = CurrencyConverter('https://www.ecb.europa.eu/stats/eurofxref/eurofxref.zip')
print(cc.convert(1, 'USD', 'KRW'))