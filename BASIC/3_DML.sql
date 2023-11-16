--DML (데이터 조작어)
--데이터베이스에 저장된 데이터를 처리하거나 조회

--INSERT : 테이블에 데이터를 삽입
INSERT INTO 테이블이름(필드이름1, 필드이름2, ...)
VALUES (데이터값1, 데이터값2, ...);

INSERT INTO author (id, name, email)
VALUES (1, 'LEE', 'LEE@naver.com');

--UPDATE : 테이블에 데이터의 내용을 수정
UPDATE 테이블명 SET 필드이름1=데이터값1, 필드이름2=데이터값2, ...
WHERE 필드이름=데이터값;

UPDATE author SET email='abc2@test.com'
WHERE id=1; --WHERE 조건을 사용안할시 전부 변경

--DELETE : 데이터를 삭제
DELETE FROM 테이블명
WHERE 필드이름=데이터값;

--SELECT