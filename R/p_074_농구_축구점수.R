################################################################# ---
##             고등학교 실용통계 :  농구, 축구 점수            ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_074_농구_축구점수.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)

# 3. 데이터 -------------

scores <- tibble::tribble(
  ~농구_점수, ~축구_점수,
  "9",   "14",
  "10",   "10",
  "11",   "13",
  "12",    "8",
  "14",   "15",
  "8",    "8",
  "7",   "10",
  "8",    "7",
  "11",   "10",
  "12",   "12",
  "13",   "12",
  "12",   "11",
  "7",    "7",
  "13",    "7",
  "9",    "8"
)

scores <- scores %>%
  mutate(across(everything(), as.integer))

# 4. 내보내기 ---------------------

scores <- krvote::clean_varnames(scores)

write_csv(scores, "data-raw/scores.csv")

# 5. 문서화 -----------------------

sinew::makeOxygen(scores)

usethis::use_data(scores, overwrite = TRUE, compress = 'xz')
