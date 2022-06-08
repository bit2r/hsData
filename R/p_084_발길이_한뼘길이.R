################################################################# ---
##             고등학교 실용통계 : 발길이와 한뼘 길이          ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

source("R/util.R")

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_084_발길이_한뼘길이.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)


# 3. 데이터 -------------

lengths <- tibble::tribble(
  ~발_길이, ~한_뼘의_길이,
  "208",    "204",
  "217",    "204",
  "226",    "220",
  "237",    "219",
  "237",    "230",
  "224",    "230",
  "200",    "190",
  "214",    "214",
  "245",    "225",
  "244",    "236",
  "239",    "239",
  "248",    "242",
  "260",    "245",
  "252",    "233",
  "254",    "241",
  "250",    "247",
  "220",    "210",
  "216",    "221",
  "231",    "213",
  "231",    "224"
)


lengths <- lengths %>%
  mutate(across(everything(), as.integer))

# 4. 내보내기 ---------------------

lengths <- clean_varnames(lengths)

write_csv(lengths, "data-raw/lengths.csv")

# 5. 문서화 -----------------------

# sinew::makeOxygen(lengths)

usethis::use_data(lengths, overwrite = TRUE, compress = 'xz')


