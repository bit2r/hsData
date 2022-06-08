################################################################# ---
##             고등학교 실용통계 : 수학선호도                  ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

source("R/util.R")

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_058_수학_선호도.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  filter(성별 != "NA")

# datapasta::dpasta(rawData)

# 3. 데이터 -------------

math_pref <- tibble::tribble(
  ~성별, ~수학_선호도,    ~키, ~몸무게,
  "1",     "5", "150", "45",
  "2",     "2", "145", "40",
  "1",     "1", "152", "46",
  "2",     "3", "162", "59",
  "1",     "2", "155", "52",
  "1",     "3", "165", "60",
  "2",     "3", "161", "50",
  "1",     "3", "157", "54",
  "2",     "4", "160", "57",
  "1",     "3", "153", "49",
  "1",     "1", "155", "61",
  "1",     "2", "162", "71",
  "2",     "2", "156", "53",
  "2",     "3", "160", "57",
  "1",     "2", "153", "50",
  "2",     "3", "164", "55",
  "1",     "4", "171", "65",
  "2",     "3", "155", "50",
  "1",     "1", "158", "51",
  "1",     "2", "172", "65"
)

math_pref <- math_pref %>%
  mutate(across(수학_선호도:몸무게, as.integer)) %>%
  mutate(성별 = factor(성별, levels= c(1,2), labels = c("남자", "여자")))

# 4. 내보내기 ---------------------

math_pref <- clean_varnames(math_pref)

write_csv(math_pref, "data-raw/math_preference.csv")

# 5. 문서화 -----------------------

# sinew::makeOxygen(math_pref)

usethis::use_data(math_pref, overwrite = TRUE, compress = 'xz')
