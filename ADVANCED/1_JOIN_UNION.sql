-- 여러 테이블에서 가져온 레코드를 조합하여 하나의 테이블이나 결과 집합으로 표현

-- INNER JOIN
-- 두 테이블 사이에 지정된 조건에 맞는 레코드만을 반환. 
-- 양쪽 테이블에 모두 해당 조건에 맞는 값이 있어야 결과에 포함
SELECT * FROM tableA INNER JOIN tableB ON tableA.ID = tableB.A_ID

-- author의 ID와 post의 author_id가 일치하는 ON조건을 만족하는 데이터만 JOIN
SELECT * FROM author INNER JOIN post ON author.ID = post.author_id;
SELECT * FROM atuhor a INNER JOIN post p ON a.ID = p.author_id;

-- LEFT OUTER JOIN
-- A테이블 데이터는 row는 모두 출력 B데이터는 ON조건에 맞는 데이터만 출력
-- ON조건에 맞지않는 B데이터는 NULL로 출력된다.
SELECT * FROM tableA a LEFT JOIN tableB b ON a.id = b.a_id

SELECT * FROM author a LEFT JOIN post p ON a.id = p.author_id;

-- UNION
-- 여러 개의 SELECT 문의 결과를 하나의 테이블이나 결과 집합으로 표현
-- 각각의 SELECT 문으로 선택된 필드의 개수와 타입은 모두 일치해야함
-- 중복이 있으면 제거하고 출력
SELECT 컬럼1, 컬럼2 FROM TABLE1 UNION SELECT 컬럼1, 컬럼2 FROM TABLE2;

