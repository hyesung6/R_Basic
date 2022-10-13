# read csv
data <- read.csv("naver_webtoon_data.csv", header = T)
data

# indexing
data[1:4, 2]
data[1:4, 2, drop = FALSE]


# NA check
data[1, 2] <- NA

# complete.cases() : 모든 열이 꽉 채워져 있는 완전한 행에 대해서만 TRUE 반환
complete.cases(data)


# make element 
data$total <- cbind(data$title, data$author)   # cbind 는 컬럼 단위로 묶음
head(data$total, 5)

# NULL을 이용한 삭제
data$total <- NULL
head(data$total)

# 필터링
## 인덱싱으로 필터링
data[data$id > 100,]
## subset() 으로 필터링
subset(data, id > 100)
