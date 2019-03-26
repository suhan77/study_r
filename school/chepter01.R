# 함수 (function)
# function (argument, argument, ....)
# argument : 인자, parameter


#################################################################
# 기본 객체
# 1. character 문자
# 2. Numeric   숫자
# 3. Integer   정수
# 4. Complex   복소수
# 5. Locgical  boolean


#################################################################
# 변수(variable) 선언
x <- 1
print(x)

msg <- "hello"
print(msg)

x <- 11:30 # 11부터 30까지 1씩 증가, range(11,31)
x


# R의 Naming roll
# 변수 lowerCamelCase
# 상수 UpperCase
# 함수 lowerCamelCase
# 이름은 동사+목적어로 쓰면 보기 편하다 ex) do, get, set


#################################################################
# 산술연산
x <- 4; y <-3
x+y
x-y
x*y
x/y
x^y # 제곱
x%/%y #몫
x%%y # 나머지, modulo 연산

#지수표현
1.2e-3 # 1.3 * 10^(-3)
1.2e3  # 1.3 * 10^3

# 복소수
1.5 + 1i

# log
n <- 2
x <-8
log(x)    # 자연로그
log10(x)  # 
log(n, x) # 

exp(x) # e
sin(x) 
abs(x) # 절대값
sqrt(x) # 루트


#################################################################
# 자료 형태
# 1. vector    같은 종류만 가짐
# 2. Matrix    행렬
# 3. List
# 4. Factor    범주형
# 5. dataFrame 

# vector
x <- c(1, 2)
x <-c(TRUE, FALSE)
x <- c(T, F) # true, false
X <- c('a', 'b', 'c')
x <- 1:10
x <- c(1+0i, 2.4+3i)
x <- c(1L, 2L, 3L) # L을 붙이면 integer


x[1] # 인덱싱
x[2]
x[c(1,3)] # 1번째, 3번째 값
x[1:3] # 슬라이싱

# 벡터에 이름 부여
fruit <- c(5, 3, 2)
names(fruit) <- c("apple", "orange", "peach")
fruit
fruit["apple"]
fruit[c("apple", "orange")]

# 벡터에 이름 부여
thing <- setNames(c(1, 2, 3), c("person", "dog", "cat"))
thing

# 벡터의 길이
length(thing)

# 기존 벡터를 이용해 벡터 만들기
a <- c(1, 2, 3)
b <- c(5, 6, 7)
x <- c(a, 4, b) # 자연스럽게 합치기 가능
x

# 인덱스 맨뒤에 추가
a[7] <- 2
a

# 값 삽입하기
append(x, 99, after=3) # x의 3번째 값 뒤에 99 삽입
x # append는 따로 저장은 하지 않음
x <- append(x, 0, after=0) # 맨 앞에 삽입, x에 저장
x

x <- append(x, 0) # 맨 뒤에 0을 붙임
x

# seq, rep 을 이용해 vector 생성
x <- seq(from=0, to=1, by=0.1) # 0.1씩 증가, 0~1까지
x

y <- seq(from=0, to=1, length=11) # 0~1까지 길이는 11
y

rep(1, 10) # 1을 10개 만듬


# 함수에 ?를 붙이면 함수의 설명이 나옴
?append
?rep
