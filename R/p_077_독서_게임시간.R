################################################################# ---
##             고등학교 실용통계 : 독서와 게임시간            ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_077_독서_게임시간.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)


# 3. 데이터 -------------

reading <- tibble::tribble(
  ~독서_시간, ~게임_시간,
  "120",   "40",
  "40",   "80",
  "150",   "30",
  "80",   "40",
  "60",   "70",
  "130",   "30",
  "60",   "90",
  "50",   "80",
  "90",   "50",
  "50",   "80",
  "130",   "20",
  "120",   "30",
  "70",   "80",
  "100",   "40",
  "90",   "50",
  "70",   "60",
  "90",   "40",
  "90",   "40",
  "100",   "30",
  "90",   "50",
  "60",   "90"
)


reading <- reading %>%
  mutate(across(everything(), as.integer))

# 4. 내보내기 ---------------------

reading <- krvote::clean_varnames(reading)

write_csv(reading, "data-raw/reading.csv")

# 5. 문서화 -----------------------

sinew::makeOxygen(reading)

usethis::use_data(reading, overwrite = TRUE, compress = 'xz')

