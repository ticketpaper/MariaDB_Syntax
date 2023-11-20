-- CAST
-- CAST(a AS type) : a값을 type으로 변환
-- 보통 정수 값을 DATE 타입으로 변환하는데 사용
SELECT CAST(20200101 AS DATE); => 2020-01-01

-- CONVERT : 문자열을 날짜/시간으로 변환하는데 사용
CONVERT('2020-01-01',DATE); => 2020-01-01

-- **DATE_FORMAT** : 날짜/시간 타입의 데이터를 지정한 형식의 문자열로 변환, 가장많이 사용
-- DATE_FORMAT(date,format)
SELECT DATE_FORMAT('2020-01-01 17:12:00', '%Y-%m-%d'); => 2020-01-01

-- CAST와 CONVERT 사용시 유의사항
-- 최신버전 : CAST('123' as INT)방식으로 int 사용가능
--           CAST('123' as signed)방식으로 signed(또는 unsigned) 사용가능
-- 구버전 : CAST('123' as signed)방식으로 signed(또는 unsigned)만 사용 가능

-- 특정 날짜, 기간 조회
DATE_FORMAT(date, format)을 활용한 조회 -- Y, mm, dd, H, i, s

-- LIKE를 사용하여 문자열 형식으로 조회
SELECT * FROM post WHERE created_time LIKE '2023%';

-- BETWEEN 연산자
SELECT * FROM post WHERE created_time BETWEEN '2023-01-01' AND '2023-12-31';

-- 비교 연산자
SELECT * FROM post WHERE '2023-01-01' <= created_time AND created_time <= '2023-12-31';

