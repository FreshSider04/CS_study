# 리스트! +++ 리스트에도 인덱싱 슬라이싱 적용가능!
namee = ["김석허", "이종호", "강서주", "갃주희", ["andsld", "efdjfkl"]]

print(namee[2])
print(namee[4][0])

# 교체
namee[0] = "김종포"
# 추가
namee.append("코모씨")
# 정렬
# namee.sort()
# 뒤집기
namee.reverse()
# 인덱스(확인)
namee.index(["김석허"])
# 특정 인덱스에 삽입
namee.insert(0, "ahf")
# 제거
namee.remove()
# 마지막 리스트 요소 제거
namee.pop()
# 중복요소 세주기!
namee.count()
# 확장
namee.extend([2, 3])