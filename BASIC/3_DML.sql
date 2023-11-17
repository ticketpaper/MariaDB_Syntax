-- DML (데이터 조작어)
-- 데이터베이스에 저장된 데이터를 처리하거나 조회

-- INSERT : 테이블에 데이터를 삽입
INSERT INTO 테이블이름(필드이름1, 필드이름2, ...)
VALUES (데이터값1, 데이터값2, ...);

INSERT INTO author (id, name, email)
VALUES (1, 'LEE', 'LEE@naver.com');

-- UPDATE : 테이블에 데이터의 내용을 수정
UPDATE 테이블명 SET 필드이름1=데이터값1, 필드이름2=데이터값2, ...
WHERE 필드이름=데이터값;

UPDATE author SET email='abc2@test.com'
WHERE id=1; --WHERE 조건을 사용안할시 전부 변경

-- DELETE : 데이터를 삭제
DELETE FROM 테이블명
WHERE 필드이름=데이터값;

-- DELETE, TRUNCATE, DROP의 차이
-- DELETE는 데이터를 삭제, 스토리지까지 삭제하지는 않아 복구 가능, log를 남김
-- TRUNCATE는 데이터를 로그도 안남기고 다 지워버림, DELETE보다 빠름
-- DROP은 테이블 구조까지 다 지워버림
 
-- SELECT : 데이터를 조회
SELECT 필드이름 FROM 테이블이름 [WHERE 조건];

SELECT * FROM author; -- author의 모든 데이터를 조회

-- author 테이블에 id가 1인 데이터를 다 조회
SELECT * FROM author
WHERE id = 1 ;

-- author 테이블에 id가 1보다 큰 데이터의 name, email를 조회
SELECT name, email FROM author
WHERE id > 1 ;

-- author 테이블에 id가 2보다 크고 name이 'abc'인 데이터를 다 조회
SELECT * FROM author
WHERE id > 2 AND name = 'abc';

-- 이름 중복제거하고 조회
SELECT DISTINCT name FROM author;

-- 정렬 (오름차순: ASC, 내림차순: DESC)
-- 여러 필드의 데이터를 쉼표(,)를 사용하여 여러기준으로 정렬할 수도있다
-- order by 생략시 pk를 기준으로 오름차순 정렬하여 결과값반환

SELECT * FROM author order by name desc; --이름으로 내림차순
-- order by 멀티 : 먼저쓴 컬럼 우선 정렬, asc/desc 생략시 asc
SELECT * FROM author order by name , email desc;

-- limit number : 특정숫자로 결과값 개수 제한
SELECT * FROM author order by id desc limit 4;

-- 별칭(alias)을 이용한 처리
-- 테이블과 필드에 임시로 별칭을 부여하고 해당 별칭으로 조회
SELECT 필드이름 AS 별칭 FROM 테이블명;
SELECT 필ㄷ이름 FROM 테이블명 AS 별칭;

SELECT name AS 이름 from author; -- AS 생략 가능
SELECT name, email from author as a;