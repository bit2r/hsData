################################################################# ---
##             고등학교 실용통계 : 건전지 수명                 ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

source("R/util.R")

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_068_건전지수명.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)


# 3. 데이터 -------------

battery <- tibble::tribble(
  ~회사명, ~건전지_수명,
  "A",   "174",
  "A",   "157",
  "A",   "140",
  "A",   "177",
  "A",   "181",
  "A",   "156",
  "A",   "167",
  "A",   "179",
  "A",   "181",
  "A",   "164",
  "A",   "180",
  "A",   "173",
  "A",   "169",
  "A",   "157",
  "A",   "179",
  "A",   "165",
  "A",   "176",
  "A",   "165",
  "A",   "149",
  "A",   "177",
  "A",   "188",
  "A",   "186",
  "A",   "186",
  "A",   "162",
  "A",   "150",
  "B",   "188",
  "B",   "165",
  "B",   "165",
  "B",   "169",
  "B",   "159",
  "B",   "154",
  "B",   "161",
  "B",   "162",
  "B",   "174",
  "B",   "161",
  "B",   "178",
  "B",   "143",
  "B",   "191",
  "B",   "165",
  "B",   "160",
  "B",   "161",
  "B",   "166",
  "B",   "170",
  "B",   "165",
  "B",   "163"
)

battery <- battery %>%
  mutate(across(건전지_수명, as.integer)) %>%
  mutate(회사명 = factor(회사명, levels= c("A", "B")) )

# 4. 내보내기 ---------------------

blood_book <- clean_varnames(blood_book)

write_csv(battery, "data-raw/battery.csv")

# 5. 문서화 -----------------------

# sinew::makeOxygen(battery)

usethis::use_data(battery, overwrite = TRUE, compress = 'xz')
