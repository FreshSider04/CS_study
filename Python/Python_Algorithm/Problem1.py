"""섬으로 향하라!

'   + -- + - + -   '
'   + --- + - +   '
'   + -- + - + -   '
'   + - + - + - +   '

해(1)와 달(0),
Code의 세상 안으로!(En-Coding)
"""


string_list = [
    '   + -- + - + -   ',
    '   + --- + - +   ',
    '   + -- + - + -   ',
    '   + - + - + - +   '
]

for i in string_list:
    i = i.replace(' ', '')
    i = i.replace('+', '1')
    i = i.replace('-', '0')

    # JEJU
    # ord(), chr()은 각각 아스키에서 10진수, 10진수에서 아스키 코드로 변환하는 코드이다.
    print(chr(int(i, 2)), end="")

