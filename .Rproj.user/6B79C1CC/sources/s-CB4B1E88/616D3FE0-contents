A_salary <- c(25, 28, 50, 60, 30, 35, 40, 70, 40, 70, 40, 100, 30, 30)
B_salary <- c(20, 40, 25, 25, 35, 25, 20, 10, 55, 65, 100, 100, 150, 300)

# 백분위수 탐색
# quantile() 함수에 구하려는 수준의 지점을 백분율 인자값으로 줌
# 상위 10%를 구하고 싶은 경우 = 하위 90% = 0.9
quantile(A_salary, 0.9)
quantile(B_salary, 0.9)

# 사분위수 탐색
# quantile() 함수 사용

quantile(A_salary)
quantile(B_salary)


# 상자그림 ( boxplot )
boxplot(A_salary, B_salary, names = c("A회사 salary", "B회사 salary"))

# 히스토그램
# breaks 는 구간을 몇 번 나누는지에 대한 인자
# 막대그래프는 이산형 수치 데이터나 범주형 데이터에 사용, = 막대 사이가 떨어져 있음
# 히스토그램은 연속형 수치 데이터에 사용 = 막대 사이가 없고 연속되어 있음
hist(A_salary, xlab = "A사 salary", ylab = "인원수", breaks = 5)

# 도수분포표
# 수집된 변수의 데이터를 범주 또는 동일한 크기의 구간으로 분류하고
# 각 구간마다 몇 개의 데이터가 존재하는지를 정리한 표로
# 많은 데이터를 알기 쉽게 정리하는 방법 중 하나
# 범주형 데이터가 아닌 경우 ,cut() 함수로 범주형으로 변환 후
# table() 함수를 사용
# 이미 범주형 데이터인 경우, table() 함수를 바로 사용해도 됨

# 도수분포표로 출력되는 메시지를 보면,
# "(" 는 해당 숫자보다 크다는 뜻이고,
# "]"는 해당 숫자와 같거나 작다는 뜻     ===> (24.9, 40] 은 24.9보다 크고 40과 같거나 작은 수의 범주라는 뜻
cut_value <- cut(A_salary, breaks = 5)
freq <- table(cut_value)
freq

A_salary <- c(25, 28, 50, 60, 30, 35, 40, 70, 40, 70, 40, 100, 30, 30)
B_salary <- c(20, 40, 25, 25, 35, 25, 20, 10, 55, 65, 100, 100, 150, 300)
A_gender <- as.factor(c('남', '남', '남' ,'남', '남', '남', '남', '남' ,'남', '여', '여', '여', '여', '여'))
B_gender <- as.factor(c('남', '남', '남', '남', '여', '여', '여', '여', '여', '여', '여', '남', '여', '여'))
A <- data.frame(gender <- A_gender,
                salary <- A_salary)
B <- data.frame(gender <- B_gender,
                salary <- B_salary)
freqA <- table(A$gender)
freqA
freqB <- table(B$gender)
freqB

# 상대적 빈도표
# prop.table() 사용
# 한 범주에 속하는 빈도가 전체 관찰수에 비해 어느 정도 비중인지 알아볼 때 사용
prop.table(freqA)
prop.table(freqB)


# 막대 그래프
# barplot()
# 이산형 수치 데이터, 범주형 데이터의 도수분포표를 시각화
barplot(freqA, names = c("남", "녀"), col = c("skyblue", "pink"), ylim = c(0, 10))
title(main = "A사")
barplot(freqB, names = c("남", "녀"), col = c("skyblue", "pink"), ylim = c(0, 10))
title(main = "B사")

# 파이 그래프
# pie()
pie(x = freqA, col = c("skyblue", "pink"), main = "A사")
pie(x = freqB, col = c("skyblue", "pink"), main = "B사")