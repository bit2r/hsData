################################################################# ---
##             고등학교 실용통계 :  턱걸이 횟수                ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

source("R/util.R")

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_073_턱걸이횟수.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)

# 3. 데이터 -------------

pullup <- tibble::tribble(
  ~턱걸이_횟수,
  "10",
  "6",
  "6",
  "5",
  "5",
  "6",
  "3",
  "3",
  "7",
  "7",
  "5",
  "6",
  "7",
  "7",
  "8",
  "7",
  "3",
  "2",
  "5",
  "14",
  "4",
  "6",
  "6",
  "16"
)

pullup <- pullup %>%
  mutate(across(턱걸이_횟수, as.integer))

# 4. 내보내기 ---------------------

homerun <- clean_varnames(pullup)

write_csv(pullup, "data-raw/pullup.csv")

# 5. 문서화 -----------------------

# sinew::makeOxygen(pullup)

usethis::use_data(pullup, overwrite = TRUE, compress = 'xz')
