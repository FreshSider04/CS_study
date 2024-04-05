import googletrans;
# 1. 구글 번역 반응 언어들
# lang = googletrans.LANGCODES;

# print(lang);

translator = googletrans.Translator();
# 2. 언어번역
# str1 = "여러분 모두 행복하기 바랍니다.";
# result1 = translator.translate(str1, dest='en', src='ko')
# print(f" => {result1.text}")

# 3. 입력을 파일로 받아서 출력
read_file = "eng.txt"
with open(read_file, 'r') as f:
    readLines = f.readlines()

outputfile = 'kor.txt'
for lines in readLines:
    re1 = translator.translate(lines, dest='ko')
    print(re1.text)

    with open(outputfile, 'a', encoding="UTF8") as f:
        f.write(re1.text, '\n')

# 4. 한글 입력을 파일로 받아서 영어파일로 출력
read_file = "kor.txt"
with open(read_file, 'rt', encoding="UTF8") as f:
    readLines = f.readlines()

outputfile = 'eng_result.txt'

for lines in readLines:
    re1 = translator.translate(lines, dest='eng')
    print(re1.text)

    with open(outputfile, 'a') as f:
        f.write(re1.text, '\n')
