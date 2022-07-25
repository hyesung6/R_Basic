# 산점도 그래프
# scatter plot : 변수와 변수 간의 관계 시각화에 유용한 그래프
# 양의 선형 그래프, 음의 선형 그래프, 상관성이 보이지 않는 경우는 독립적 등..

A_salary <- c(25, 28, 50, 60, 30 , 35, 40, 70, 40 ,70, 40, 100, 30, 30)
A_hireyears <- c(1, 1, 5, 6 ,3, 3, 4, 7, 4, 7, 4, 10, 3, 3)
A <- data.frame(salary <- A_salary,
                hireyears <- A_hireyears)

plot(A$hireyears, A$salary, xlab = "근무년수", ylab = "연봉(백만원단위)")

# pairs() : 여러 변수의 산점도 그래프를 한 눈에 볼 수 있게 작성
pairs(iris[, 1:4], main = "iris data")

# 상관계수 : 변수 간의 관련성을 수치로 계산
# 가장 많이 사용하는 계산법 -> 피어슨 상관계수
# 피어슨 상관계수는 -1 ~ 1 사ㅣ의 값
# 1에 가까울수록 양의 상관관계
# -1에 가까울수록 음의 상관관계
# 0에 가까울수록 서로 독립적
cor(A$hireyears, A$salary)

# 상관행렬 ( correlation matrix heatmap ) : 상관계수 값으로 생성한 행렬
cor(iris[, 1:4])

# 상관행렬 히트맵 : 변수가 많아서 눈으로 보기 어려운 경우
heatmap(cor(iris[, 1:4]))

# boxplot
boxplot(iris)

# plot : x y 좌표상의 점으로 시각화
plot(iris)

# head() : 벡터, 매트릭스, 테이블, 데이터프레임을 6라인까지 출력
head(iris)

# barplot(빈도값 벡터) 
barplot(A_hireyears, xlab = "Value", ylab = "Count")

# mosaicplot(행렬) -> 분할표 그림
mosaicplot(A)

# stars(행렬) -> 스타차트
stars(A)
