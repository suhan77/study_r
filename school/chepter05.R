install.packages('dplyr')

library(dplyr)

a <- data.frame(x=c(5, 10, 15, 20, 25, 30), y=c("a", "b", "c", "d", "e", "f"))
b <- data.frame(z=c(10, 20, 30, 40, 50, 60))
df <- cbind(a, b)

# select 연산
a <- select(df, x, y)
print(a)

# filter연산 RDB에서 where절과 같다.
filter(df ,x==5)

# R의 논리 연산 : 파이썬과 같다
# and &
# or |
# not !

# head, 위에만 보기
head(df, 2)

# tail, 아래만 보기
tail(df, 2)

# arrange, 정렬
arrange(df, x)
arrange(df, desc(x)) # 내림차순

# 새로운 컬럼 추가하기, mutate
df <- mutate(df, total = x + z)
df <- mutate(df, test = ifelse(total >= 60, "pass", "fail")) #조건을 넣어 데이터 생성
df


# 데이터 시각화, 그래프 그리기
# ggplot2
install.packages('ggplot2')


library(ggplot2)

# 1. 객체 생성
object <- ggplot(df, aes(x = x, y = total))


# x : x-axis
# y : y-axis
# shape : 모양
# color : 색
# fill : 
# size : 
# alpha : 
# linetype : 

# 2. 데이터 선택하기

install.packages("titanic")
library(titanic)

data("titanic_train", package = "titanic")
titanic <- titanic_train

ggplot(data = titanic, aes(x = Fare)) +
  geom_histogram()

# geom_point()
# geom_line()
# geom_segment()