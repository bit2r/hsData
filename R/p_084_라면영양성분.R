################################################################# ---
##             고등학교 실용통계 : 라면 영양성분               ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_084_라면영양성분.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)

# 3. 데이터 -------------

noodle <- tibble::tribble(
  ~열량, ~탄수화물,   ~나트륨,
  "505",  "81", "1690",
  "510",  "82", "1690",
  "505",  "77", "1720",
  "505",  "83", "1720",
  "505",  "77", "1750",
  "515",  "85", "1750",
  "490",  "78", "1750",
  "565",  "88", "1770",
  "515",  "79", "1780",
  "560",  "86", "1790",
  "525",  "82", "1790",
  "500",  "79", "1790",
  "515",  "81", "1790",
  "490",  "80", "1810",
  "515",  "79", "1830",
  "505",  "77", "1850",
  "545",  "86", "1850",
  "500",  "80", "1860",
  "540",  "89", "1870",
  "500",  "79", "1880"
)


noodle <- noodle %>%
  mutate(across(everything(), as.integer))

# 4. 내보내기 ---------------------

noodle <- krvote::clean_varnames(noodle)

write_csv(noodle, "data-raw/noodle.csv")

# 5. 문서화 -----------------------

sinew::makeOxygen(noodle)

usethis::use_data(noodle, overwrite = TRUE, compress = 'xz')


