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


