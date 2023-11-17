-- CAST
-- CAST(a AS type) : a값을 type으로 변환
-- 보통 정수 값을 DATE 타입으로 변환하는데 사용
SELECT CAST(20200101 AS DATE); => 2020-01-01

-- CONVERT : 문자열을 날짜/시간으로 변환하는데 사용
CONVERT('2020-01-01',DATE); => 2020-01-01

-- DATE_FORMAT : 날짜/시간 타입의 데이터를 지정한 형식의 문자열로 변환, 가장많이 사용
-- DATAE_FORMAT(date,format)
SELECT DATE_FORMAT('2020-01-01 17:12:00', '%Y-%m-%d'); => 2020-01-01