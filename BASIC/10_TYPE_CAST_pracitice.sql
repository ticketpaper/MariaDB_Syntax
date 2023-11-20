-- 특정 날짜로 찾기
SELECT * FROM post
WHERE DATE_FORMAT(created_time,'%Y-%m-%d') = '2023-11-17';

select * from post
where date_format(created_time,'%Y-%m-%d') = '2023-11-20';


-- 오늘 날짜로 찾기
select date_format(now(),'%Y-%m-%d');

select * from post
where date_format(created_time,'%Y-%m-%d') = date_format(now(),'%Y-%m-%d');


