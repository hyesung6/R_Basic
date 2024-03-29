# 데이터 대표값 탐색 - 평균
A_salary <- c(25, 28, 50, 60, 30, 35, 40, 70, 40, 70, 40, 100, 30, 30)
B_salary <- c(20, 40, 25, 25, 35, 25, 20, 10, 55, 65, 100, 100, 150, 300)

mean(A_salary)
mean(B_salary)

# 결측값(NA)가 있는 경우 결측값을 제거하고 평균을 구할 때는 
# mean 함수의 인자로 " na.rm = T " 를 추가
mean(A_salary, na.rm = T)


# 데이터 대표값 탐색 - 중앙값
median(A_salary)
median(B_salary)

# 결측값이 있는 경우 na.rm = T 추가
median(A_salary, rm.na = T)

# A_salary의 평균 : 46.28571
# A_salary의 중앙값 : 40
# B_salary의 평균 : 69.28571
# B_salary의 중앙값 : 37.5
# --> B_salary는 평균이 높지만 중앙값이 낮으므로, A_salary에 비해 요소간 편차가 크고, 
# 평균을 상회하는 요소의 개수가 더 많을 것으로 예상이 가능
# 평균만으로는 대표값으로 충분하지 않다.


# 데이터 대표값 탐색 - 절사평균
# 위 코드에서 본 바와 같이, 평균은 평균을 아득히 상회하는 이상값에 대해서 설명이 부족함
# 이상값에 민감한 평균의 특징을 보완한 것이 절사평균

# 양끝 10%씩 값을 제외하고 평균을 구함
# trim = 0.1 인자 추가
mean(A_salary, trim = 0.1)
mean(B_salary, trim = 0.1)

# A_salary의 절사평균 : 43.58333
# B_Salary의 절사평균 : 55
# B_salary의 이상값을 제외한 절사평균을 구한 결과, 중앙값에 좀 더 가까운 대표값을 얻을 수 있음


# 데이터 대표값 탐색 - 가중평균
# 여러 모집단의 샘플이 똑같이 수집되지 않는 경우가 많음
# 이를 보정하기 위해, 데이터가 부족한 그룹에더 높은 가중치를 적용
