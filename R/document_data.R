#' @importFrom tibble tibble
NULL

#' @title 수학선호도
#' @description 고등학교 실용통계 P58 수학선호도
#' @format A data frame with 20 rows and 4 variables:
#' \describe{
#'   \item{\code{성별}}{integer 1,2 남성,여성}
#'   \item{\code{수학_선호도}}{integer 1~5 리커트 척도, 1: 수학 가장 비선호 5: 수학 가장 선호}
#'   \item{\code{키}}{integer 신장 CM}
#'   \item{\code{몸무게}}{integer 몸무게 KG}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"math_pref"

#' @title 혈액형과 한학기 동안 읽은 책의 수
#' @description 고등학교 실용통계 P59 지홍이네 반 학생 혈액형과 한 학기 동안 읽은 책의 수
#' @format A data frame with 20 rows and 2 variables:
#' \describe{
#'   \item{\code{혈액형}}{integer 혈액형, A/B/AB/O}
#'   \item{\code{책의수}}{integer 독서 책의 수}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"blood_book"

#' @title 두 회사 건전지 수명
#' @description 고등학교 실용통계 P68 분단위로 측정된 두회사 건전지 수명
#' @format A data frame with 45 rows and 2 variables:
#' \describe{
#'   \item{\code{회사명}}{integer 회사명, A/B}
#'   \item{\code{건전지_수명}}{integer 분단위로 측정된 건전지 수명}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"battery"

#' @title 두 타자 홈런수
#' @description 고등학교 실용통계 P69 A, B 두타자 홈런수
#' @format A data frame with 34 rows and 2 variables:
#' \describe{
#'   \item{\code{타자}}{integer 타자 A,B}
#'   \item{\code{홈런수}}{integer 홈런수}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"homerun"


#' @title 턱걸이 횟수
#' @description 고등학교 실용통계 P73 턱걸이 횟수
#' @format A data frame with 24 rows and 1 variables:
#' \describe{
#'   \item{\code{턱걸이_횟수}}{integer 턱걸이 횟수}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"pullup"

#' @title 농구점수와 축구점수
#' @description 고등학교 실용통계 P74 농구점수와 축구점수
#' @format A data frame with 15 rows and 2 variables:
#' \describe{
#'   \item{\code{농구_점수}}{integer 농구점수}
#'   \item{\code{축구_점수}}{integer 축구점수}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"scores"

#' @title 현주네반 20명 목둘레와 허리둘레
#' @description 고등학교 실용통계 P75 현주네반 20명 신체 측정정보; 목둘레, 허리둘레
#' @format A data frame with 20 rows and 2 variables:
#' \describe{
#'   \item{\code{목둘레}}{integer cm 로 측정된 목둘레}
#'   \item{\code{허리둘레}}{integer cm 로 측정된 허리둘레}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"measures"


#' @title 영수네반 20명 수학 성적과 과학 성적
#' @description 고등학교 실용통계 P76 영수네반 학생 20명 성적; 수학, 과학
#' @format A data frame with 20 rows and 2 variables:
#' \describe{
#'   \item{\code{수학}}{integer 수학성적}
#'   \item{\code{과학}}{integer 과학성적}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"grades"


#' @title 미희네반 학생 독서와 게임시간
#' @description 고등학교 실용통계 P77 미희네반 학생들 하루평균 독서 및 게임시간
#' @format A data frame with 21 rows and 2 variables:
#' \describe{
#'   \item{\code{독서_시간}}{integer 독서시간}
#'   \item{\code{게임_시간}}{integer 게임시간}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"reading"


#' @title 국내출시 차량정보
#' @description 고등학교 실용통계 P78 국내 출시 30종 차량의 중량과 연비
#' @format A data frame with 30 rows and 2 variables:
#' \describe{
#'   \item{\code{중량}}{integer 중량 KG}
#'   \item{\code{연비}}{integer 연비 리터당 킬로미터}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"cars"

#' @title 봉지라면 20종 영양성분
#' @description 고등학교 실용통계 P84 봉지라면 20종 영양성분
#' @format A data frame with 20 rows and 3 variables:
#' \describe{
#'   \item{\code{열량}}{integer 열량, kcal}
#'   \item{\code{탄수화물}}{integer 탄수화물, gram}
#'   \item{\code{나트륨}}{integer 나트륨, mg}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"noodle"

#' @title 상원이네 반 학생 발길이와 한뼘길이
#' @description 고등학교 실용통계 P84 상원이네 반 학생 20명 발 길이와 한 뼘 길이
#' @format A data frame with 20 rows and 2 variables:
#' \describe{
#'   \item{\code{발_길이}}{integer 발길이, mm}
#'   \item{\code{한_뼘의_길이}}{integer 한뼘길이, mm}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"lengths"


#' @title 한국 고등학생 신발구매 실태
#' @description 고등학교 실용통계 P156 한국고등학생 신발구매실태 조사
#' @format A data frame with 60 rows and 6 variables:
#' \describe{
#'   \item{\code{학년}}{integer 학년, 1/2/3}
#'   \item{\code{성별}}{integer 성별, 1:남자/2:여자}
#'   \item{\code{신발_사이즈}}{integer 신발 사이즈}
#'   \item{\code{구매_장소}}{integer 구매장소, 1:개별 매장/2:전문 매장/3:백화점/4:할인 마트/5:온라인 매장}
#'   \item{\code{구매_이유}}{integer 구매이유, 1:가격이 적당해서/2:발이 편해서/3:디자인이 좋아서/4:지인이 권유해서}
#'   \item{\code{x12시_발길이}}{integer 12시 발길이}
#'   \item{\code{x18시_발길이}}{integer 18시 발길이}
#'   \item{\code{적합성}}{integer 0:부적합/1:적합}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"shoes"

#' @title 두회사 LED 수명
#' @description A, B 두회사 LED 수명
#' @format A data frame with 50 rows and 2 variables:
#' \describe{
#'   \item{\code{회사명}}{character 회사명 A,B}
#'   \item{\code{led_수명}}{integer LED 수명}
#'}
#' @details 통그라미 내장 데이터
#' @source 통계청 통계교육원, "고등학교 실용통계"
"LED"
