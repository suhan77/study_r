# install packages
install.packages("readr")

# readr ��Ű���� �޸𸮷� �ø���.
library(readr)


###############################################
# factor
# ������ �����͸� ǥ���ϴ� ������ ����

x <- factor(c("yes", "yes", "no", "yes", "no"))
x

class(x) # � Ŭ�������� Ȯ��


x <- factor(c("yes", "yes", "no", "yes", "no"), levels=c("yes", "no"))
x

table(x) # level���� ������ ��

blood.type <- factor(c("A", "A", "AB", "O", "O"), levels=c("A", "B", "AB", "O"))
blood.type

##############################################
# data frames
# ǥ���·� �Ǿ�����

# ������� 1
x <- data.frame(id = 1:4, name =c("kim", "lee", "park", "choi"))
x

# ������� 2
x <- c(100, 75, 80)
y <- c("A302043", "A302044", "A302045")
z <- data.frame(score=x, ID=y)
z

str(z) # ������������ ����

data.2 <- data.frame(x=1:3, y=c('a','b','c'), stringsAsFactors = F) # ���ڿ��� ���� Factor�� ����

# dataFrame ��ġ��
a <- data.frame(x=c(5, 10, 15), y=c("a", "b", "c"))
b <- data.frame(z=c(10, 20, 30))
cbind(a, b) # �� ���� ��ġ��

a1 <- data.frame(x=c(20, 25, 30), y=c("d", "e", "f"))
rbind(a, a1) # ������ ��ġ��

df <- rbind(a, a1)
######################################################
# save data frame, csv
write.csv(df, file="address.csv")

df2 <- read.csv("address.csv")
df2

View(df2) # ǥ�� ���� ����

######################################################
# readr ��Ű���� �̿�, �̰��̴� ����
df3 <- read_csv(file="address.csv")
df3