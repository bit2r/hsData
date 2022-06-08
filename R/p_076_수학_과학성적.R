################################################################# ---
##             고등학교 실용통계 : 수학과 과학성적             ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

source("R/util.R")

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_076_수학_과학성적.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)

# 3. 데이터 -------------

grades <- tibble::tribble(
  ~수학,   ~과학,
  "66",  "83",
  "45",  "47",
  "60",  "55",
  "48",  "46",
  "42",  "41",
  "52",  "63",
  "65",  "81",
  "70",  "57",
  "100",  "88",
  "60",  "70",
  "82",  "80",
  "59",  "56",
  "50",  "45",
  "40",  "50",
  "66",  "58",
  "72",  "67",
  "92",  "93",
  "50",  "70",
  "65",  "70",
  "100", "100"
)

grades <- grades %>%
  mutate(across(everything(), as.integer))

# 4. 내보내기 ---------------------

grades <- clean_varnames(grades)

write_csv(grades, "data-raw/grades.csv")

# 5. 문서화 -----------------------

# sinew::makeOxygen(grades)

usethis::use_data(grades, overwrite = TRUE, compress = 'xz')
