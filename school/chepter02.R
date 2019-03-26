
# 벡터에 서로다른 객체를 혼용
y <- c(1.6, "a") # 1.6이 문자열로
y <- c(1, TRUE) # TRUe 가 1로 바뀜
y <- c("a", TRUE) #TRUE 가 문자여로 바뀜

# 자료형 확인
x <- 0.6
class(x)

# 형변환
# 에러가 나는경우 NA로 바꿈 >> 에러 찾기가 어려울 수 있음
as.numeric(x)
as.logical(x)
as.complex(x)

# 정규분포를 따르는 난수 생성
x <- rnorm(10)
x

# 통계함수
max(x)
min(x)
sum(x)
prod(x) # 모든 성분의 곱
mean(x)
median(x)
range(x) #최대값과 최소값의 차이
qauntail(x, probs=c(0.2, 0.7)) # 분위수, 원하는 위치의 값(0~100%)
var(x)
sd(x) # 표준편차
cov(x, y) # 공분산
cor(x, y) # 상관계수
cumsum(x) # 누적합
cumprod(x) #누적곱
cummax(x) #누적최대값
cummin(x) #누적최소값
pmax(x, y, z) #성분별 최대값
pmin(x, y, z) #성분별 최소값

# 상관관계 - 공분산, 상관계수
#            두 집단간의 관계
# 연관성 - 연관성, 방향성

#########################################################################
#매트릭스, matrices, 행렬
# row(행) column(열) >> n x m 행렬
# 구성원 : entry, element

# matrix 생성 1
m <- matrix(nrow = 2, ncol = 3) # NA 값으로 채워짐
m

# element 는 맨 왼쪽부터, 위에서 아래로 값을 넣는다.
m <- matrix(1:20 , nrow = 4, ncol = 5) # 값으로 채워짐
m

# element는 맨 위쪽부터 , 왼쪽에서 오른쪽으로 값을 넣는다, byrow를 T로준다.
m <- matrix(1:20 , nrow = 4, ncol = 5, byrow = T)
m

m <- matrix(c(1, 2, 3, 4, 5, 6) , nrow = 2, ncol = 3, byrow = T)
m

# matrix 생성 2

m <- 1:10 # 먼저 벡터를 만든다
dim(m) <- c(2,5) # 메트릭스의 shap을 c(2,5) 형태로 , dim에 넣는다
m

# matrix 생성 3
x <- 1:3
y <- 10:12
cbind(x, y) # 가로로 합친다, 열 두개를 합친다. row의 개수가 같아야함

rbind(x, y) # 세로로 합친다, 행 두개를 합친다. column의 개수가 같아야함


z <- matrix(1:20, 4, 5)
z
# 이름 부여



#########################################################################
# list , 다른 객체들로 구성된 특별한 형태의 벡터

x <- list(1, "a", TRUE, 1+4i)
x


jsh <- list(kor.name="전수한",
            eng.name="jsh",
            age=29,
            married=F,
            no.child=0,
            child.ages=c(0,0))
jsh


# list 인덱싱
jsh$kor.name # $를 이용해서 접근한다.
jsh["kor.name"] # 그냥 접근하면 이름까지 나온다
jsh[1] # 숫자로도 접근 가능
jsh[c(1,2)]
jsh$child.ages[1] # list는 []로 가져오면됨














