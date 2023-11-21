-- 집계 함수
- COUNT() : 행의 개수를 세어줌
- AVG() : 행 안에 있는 값의 평균을 내어줌
- MIN() : 행 안에 있는 값의 최솟값을 반환해줌
- MAX() : 행 안에 있는 값의 최댓값을 반환해줌
- SUM() : 행 안에 있는 값의 합을 내어줌

-- post 테이블의 price에 적절한 값을 넣고
-- avg, min, max, sum (round() 함수 사용해서 소수점 자르기)
select round(avg(price)) as price_avg,
	   round(max(price)) as price_max, 
       round(min(price)) as price_min,
       round(sum(price)) as price_sum
from post;

-- GROUP BY 절
-- 선택된 레코드의 집합을 특정 값으로 그룹화한 결과 집합
select 컬럼명 from 테이블명 group by 컬럼명

-- author_id별 count값
select count(*) from post
group by author_id;
-- author_id별 price sum, avg;
select round(avg(price)) as price_avg,
	   round(sum(price)) as price_sum 
from post
group by author_id;

-- HAVING 절

-- author_id별로 price 평균값을 구하시오.
-- 단, 건별로 2000원 이상인 데이터만 평균을 내서 출력하시오
select author_id, 
       round(avg(price)) as price_avg
from post 
where price >= 2000
group by author_id;
-- author_id 별로 price 평균값을 구하되
-- 평균값이 2000원 이상인 데이터만 출력하시오
select author_id, 
       round(avg(price)) as price_avg
from post 
group by author_id
having avg(price) >= 2000;
-- 위 두개 +
select author_id, round(avg(price)) as price_avg
from post 
where price >= 2000
group by author_id
having avg(price) >= 2000;

-- 재귀
WITH RECURSIVE number_sqeunce(HOUR) AS(
    SELECT 0
    UNION ALL
    SELECT HOUR + 1 FROM number_sqeunce WHERE HOUR<23
)select HOUR, 0 as COUNT from number_sqeunce