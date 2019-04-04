# install packages
install.packages("readr")

# readr 패키지를 메모리로 올린다.
library(readr)


###############################################
# factor
# 범주형 데이터를 표현하는 데이터 형태

x <- factor(c("yes", "yes", "no", "yes", "no"))
x

class(x) # 어떤 클래스인지 확인


x <- factor(c("yes", "yes", "no", "yes", "no"), levels=c("yes", "no"))
x

table(x) # level별로 개수를 셈

blood.type <- factor(c("A", "A", "AB", "O", "O"), levels=c("A", "B", "AB", "O"))
blood.type

##############################################
# data frames
# 표형태로 되어있음

# 생성방법 1
x <- data.frame(id = 1:4, name =c("kim", "lee", "park", "choi"))
x

# 생성방법 2
x <- c(100, 75, 80)
y <- c("A302043", "A302044", "A302045")
z <- data.frame(score=x, ID=y)
z

str(z) # 데이터프레임 정리

data.2 <- data.frame(x=1:3, y=c('a','b','c'), stringsAsFactors = F) # 문자열이 오면 Factor로 만든

# dataFrame 합치기
a <- data.frame(x=c(5, 10, 15), y=c("a", "b", "c"))
b <- data.frame(z=c(10, 20, 30))
cbind(a, b) # 두 열을 합치기

a1 <- data.frame(x=c(20, 25, 30), y=c("d", "e", "f"))
rbind(a, a1) # 행으로 합치기

df <- rbind(a, a1)
######################################################
# save data frame, csv
write.csv(df, file="address.csv")

df2 <- read.csv("address.csv")
df2

View(df2) # 표로 직접 보기

######################################################
# readr 패키지를 이용, 이것이더 빠름
df3 <- read_csv(file="address.csv")
df3