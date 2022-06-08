################################################################# ---
##             고등학교 실용통계 : 목둘레와 허리둘레           ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

source("R/util.R")

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_075_목둘레_허리둘레.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)

# 3. 데이터 -------------

measures <- tibble::tribble(
  ~목둘레,  ~허리둘레,
  "30.5",   "61",
  "38.1", "86.4",
  "25.4", "48.3",
  "26.9", "53.6",
  "29", "56.4",
  "31.5", "66.5",
  "33", "69.1",
  "34", "75.2",
  "35.1", "74.9",
  "36.1",   "80",
  "37.3", "83.1",
  "29.7", "61.2",
  "28.2", "52.6",
  "26.7", "48.8",
  "32.3", "65.3",
  "33.5", "73.4",
  "34.3", "70.9",
  "35.1", "79.5",
  "28.4", "56.6",
  "26.2", "52.1"
)

measures <- measures %>%
  mutate(across(everything(), as.integer))

# 4. 내보내기 ---------------------

measures <- clean_varnames(measures)

write_csv(measures, "data-raw/measures.csv")

# 5. 문서화 -----------------------

# sinew::makeOxygen(measures)

usethis::use_data(measures, overwrite = TRUE, compress = 'xz')
