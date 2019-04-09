'''
----markdown-------

#Tidy data
 - 데이터는 줄이는 것이 좋다
- 그 과정을 전처리과정 이라고 한다
# 관련 라이블리
- tidyr
- dplyr

# tidyverse package
- ggplot2
- magrittr
- dplyr
- tidyr

#  데이터 전처리 과정
1. 데이터 소스
2. 수집 
- 정형데이터(RDB, CSV)
- 반정형 데이터(json, xml, html, 웹로그, 센서데이터) 
- 비정형 데이터(텍스트, 이미지, 동영상)
- 관련패키지 (readr, rvest, xml2, httr, Rcrawler, RSelenium)
3. 저장(파일시스템, 데이터베이스)
4. 처리(배치, 실시간, 분산병렬)
5. 분석(통계, 데이터마이닝, 텍스트마이닝, 머신러닝)
6. 표현(시간, 분포, 관계, 비교, 공간 시각화)


# 자주 사용되는 readr package의 함수 
read_csv - 일반 csv 파일, 콤마(,) 로 구분됨
read_csv2 - 세미콜론으로 구분된 파일
read_tsv - tab으로 구분된 파일 읽기
resd_delim - delim 파일 읽기
read_fwf - 혼합파일
read_log - 로그파일 읽기


read_delim(주소, delim = ' ') # 구분자를 지정해줄 수 있다.
주소에는 파일디렉터리주소, url 주소 가능

# 파이프사용 방법
- arg %>% 함수 %>% 함수 %>% 함수
- 왼쪽의 결과가 오른쪽 함수의 입력으로 들어간다.

# pipline 사용하기
function(dataframe, arg1, arg2) 
dataframe %>% function(arg1, arg2) 
위와 아래는 같은 코드이다

- 예시
katrina %>%
  filter(storm_name == "KATRINA) %>%
  select(month, day, hour, max_wind) %>%
  head(3)
  

'''

# readr
install.packages('readr')
library(readr)

getwd() # 현재 위치
adress <- read_csv("address.csv")
View(address)

zika_data <- read.csv("heeps://www.example.com/blog/page-name")
View(zika_data)
class(zika_data)


# rvest
rating <- lego_movi %>%



