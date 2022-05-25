################################################################# ---
##             고등학교 실용통계 :  두타자 홈런기록            ##
##                    개발자: 이광춘                           ##
##                최종수정일: 2022-05-24                       ##
################################################################# ---

# 1. 패키지 -------------
library(tidyverse)
library(readxl)
library(usethis)

# 2. 데이터 전처리 -------------

rawData <- readxl::read_excel("inst/extdata/p_069_홈런기록.xlsx") %>%
  janitor::clean_names(ascii = FALSE) %>%
  janitor::remove_empty("rows") %>%
  select(!starts_with("x"))

# datapasta::dpasta(rawData)



# 3. 데이터 -------------

homerun <- tibble::tribble(
  ~타자, ~홈런수,
  "A",  "0",
  "A",  "8",
  "A",  "4",
  "A", "20",
  "A", "21",
  "A", "26",
  "A", "29",
  "A", "18",
  "A", "28",
  "A", "44",
  "A", "27",
  "A", "24",
  "A", "24",
  "A", "19",
  "A", "31",
  "A", "14",
  "A", "34",
  "B", "20",
  "B",  "7",
  "B", "31",
  "B", "23",
  "B", "23",
  "B", "13",
  "B", "21",
  "B", "31",
  "B", "19",
  "B", "21",
  "B",  "1",
  "B", "16",
  "B", "10",
  "B", "18",
  "B", "21",
  "B", "23",
  "B", "17"
)

homerun <- homerun %>%
  mutate(across(홈런수, as.integer)) %>%
  mutate(타자 = factor(타자, levels= c("A", "B")) )

# 4. 내보내기 ---------------------

homerun <- krvote::clean_varnames(homerun)

write_csv(homerun, "data-raw/homerun.csv")

# 5. 문서화 -----------------------

sinew::makeOxygen(homerun)

usethis::use_data(homerun, overwrite = TRUE, compress = 'xz')
