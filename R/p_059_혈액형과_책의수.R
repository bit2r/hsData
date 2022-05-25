################################################################# ---
##             고등학교 실용통계 : 혈액형과 책의수             ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_059_혈액형과_책의수.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)

# 3. 데이터 -------------

blood_book <- tibble::tribble(
  ~혈액형, ~책의수,
  "B", "16",
  "A", "12",
  "B", "13",
  "O", "21",
  "AB",  "8",
  "B", "17",
  "B", "14",
  "A", "12",
  "A", "14",
  "AB", "11",
  "A", "14",
  "O", "13",
  "A", "12",
  "B",  "7",
  "O",  "5",
  "A",  "6",
  "B",  "5",
  "B",  "6",
  "O",  "4",
  "B",  "7"
)

blood_book <- blood_book %>%
  mutate(across(책의수, as.integer)) %>%
  mutate(혈액형 = factor(혈액형, levels= c("A", "B", "AB", "O")) )

# 4. 내보내기 ---------------------

blood_book <- krvote::clean_varnames(blood_book)

write_csv(blood_book, "data-raw/blood_book.csv")

# 5. 문서화 -----------------------

sinew::makeOxygen(blood_book)

usethis::use_data(blood_book, overwrite = TRUE, compress = 'xz')
