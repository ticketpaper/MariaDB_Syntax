--DDL (데이터 정의어)
--데이터베이스나 테이블 등을 생성, 삭제하거나 구조를 변경

--CREATE (데이터베이스, 테이블 등을 생성)
CREATE DATABASE board;
USE board;
-- author 테이블 생성
CREATE TABLE author(id INT, 
                    name VARCHAR(255), 
                    email VARCHAR(255), 
                    password VARCHAR(255),
                    test1 VARCHAR(255),
                    PRIMARY KEY (id)
);
-- NOT NULL 설정 안할시 기본 설정 NULL
-- PRIMARY KEY(기본키)설정시 unique, not null 제약조건 부여

SHOW TABLES; -- 테이블 조회 명령어
DESCRIBE author; -- 테이블 컬럼 조회
SHOW FULL COLUMNS FROM author; -- 테이블 컬럼 상세조회

SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'posts'; -- 테이블 참조관계 및 제약조건 조회

SHOW INDEX FROM posts; -- 테이블 index 조회
-- 제약조건 정보조회와 인덱스조회는 상당수 일치
-- 인덱스 타입 : BTREE : 트리구조 -> 성능 관련

SHOW CREATE TABLE posts; -- 테이블 생성문 조회
-- CREATE TABLE `posts` (
--    `id` int(11) NOT NULL,
--    `title` varchar(255) DEFAULT NULL,
--    `content` varchar(255) DEFAULT NULL,
--    `author_id` int(11) DEFAULT NULL,
--    PRIMARY KEY (`id`),
--    KEY `author_id` (`author_id`),
--    CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

-- posts 테이블 생성
CREATE TABLE posts(id INT PRIMARY KEY,
                   title VARCHAR(255),
                   content VARCHAR(255),
                   author_id INT,
                   FOREIGN KEY(author_id) REFERENCES author(id)
);
-- FOREIGN KEY(참조키)설정시 생성, 삭제, 수정에 대해 제약이 발생, MUL 키워드로 조회

--ALTER (테이블 정보 변경)
ALTER TABLE 테이블명 RENAME 새로운테이블명; -- 테이블 이름 변경
ALTER TABLE posts RENAME post;

ALTER TABLE 테이블명 ADD COLUMN 컬럼명 자료형 [NULL OR NOT NULL]; -- 컬럼 추가
ALTER TABLE author ADD COLUMN role VARCHAR(50);

ALTER TABLE 테이블명 MODIFY COLUMN 컬럼명 타입 [제약조건]; -- 필드 타입 변경 (덮어씌움 수정x)
ALTER TABLE author MODIFY COLUMN name VARCHAR(100) NOT NULL;

ALTER TABLE 테이블명 CHANGE COLUMN 기존컬럼명 새로운컬럼명 타입 [제약조건]; -- 컬럼 이름 변경
ALTER TABLE posts CHANGE COLUMN content contents VARCHAR(255);

ALTER TABLE 테이블명 DROP COLUMN 컬럼명; -- 컬럼 삭제
ALTER TABLE author DROP COLUMN test1;

--DROP 
DROP TABLE 테이블명; -- 테이블 삭제

DROP TABLE IF EXISTS 테이블명; -- 해당 테이블이 존재하면 삭제함 
-- 오류방지, 스크립트 만들때 

