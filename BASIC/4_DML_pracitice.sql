-- author 테이블에 데이터 삽입
INSERT INTO author (id, name, email,password) 
VALUES (1, 'LEE', 'LEE2@naver.com','1234');
INSERT INTO author (id, name, email,password)  
VALUES (2, 'KIM', 'KIM@naver.com','1234');
INSERT INTO author (id, name, email,password)  
VALUES (3, 'CHOI', 'CHOI@naver.com','369');
INSERT INTO author (id, name, email,password)  
VALUES (4, 'CHOI', 'CHOI@naver.com','369');
INSERT INTO author (id, name, email,password,role) 
VALUES (5, 'BEAK', 'BEAK@naver.com','33124122', '123');

-- post 테이블에 데이터삽입
INSERT INTO post (id, title, contents, author_id)
VALUES (1, 'AAA', 'AAA', 1);
INSERT INTO post (id, title, contents, author_id)
VALUES (2, 'ZZZZZ', 'fdzz', 3);
INSERT INTO post (id, title, contents)
VALUES (3, 'WHY', 'WHY');
--author_id는 NOT NULL이 아니기에 NULL값이 들어갈수있다.
INSERT INTO post (id, title, contents)
VALUES (4, 'HUMMMMM', 'HUMMMMM');
--author_id는 NOT NULL이 아니기에 NULL값이 들어갈수있다.
INSERT INTO post (id, title, contents,athor_id) 
VALUES (4, 'HUMMMMM', 'HUMMMMM', 10);	
-- 해당 구문 실행시 author_id가 없는 컬럼을 참조해서 아래와 같은 에러 발생
-- Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`board`.`post`, CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`))

-- author 데이터중 id가 4인 데이터 email을 abc@naver.com, name을 abc로 변경
UPDATE author SET email='abc@naver.com', name='abc'
WHERE id = 4;

-- post에 글쓴적이 없는 author 데이터 1개 삭제
DELETE FROM author
WHERE id = 2;

-- post에 글쓴적 있는 author 데이터 1개 삭제 -> 에러 -> 조치 후 삭제
DELETE FROM author
WHERE id = 1;
-- -> 에러 발생 (에러 1451 : 참조중이라 삭제 못함)
DELETE FROM post
WHERE author_id = 1;
-- -> 참조하고있는 데이터를 삭제 후 재삭제시 에러 발생 X


-- 게시판 회원은 총 5명이 되도록 만들고, 
INSERT INTO author (id, name, email,password) 
VALUES (1, 'LEE', 'LEE2@naver.com','1234');
INSERT INTO author (id, name, email,password)  
VALUES (2, 'KIM', 'KIM@naver.com','1234');
INSERT INTO author (id, name, email,password)  
VALUES (3, 'RYU', 'RYU@naver.com','369');
INSERT INTO author (id, name, email,password)  
VALUES (4, 'CHOI', 'CHOI@naver.com','369');
INSERT INTO author (id, name, email,password,role) 
VALUES (5, 'BEAK', 'BEAK@naver.com','33124122', '123');

-- 게시판에 실명으로 글이 쓰여진 게시글은 총 3건, 익명으로 쓰여진 글은 2건이 있도록 INSERT
INSERT INTO post (id, title, contents, author_id)
VALUES (1, 'AAA', 'AAA', 1);
INSERT INTO post (id, title, contents, author_id)
VALUES (2, 'ZZZZZ', 'fdzz', 3);
INSERT INTO post (id, title, contents)
VALUES (3, 'WHY', 'WHY');
INSERT INTO post (id, title, contents)
VALUES (4, 'HUMMMMM', 'HUMMMMM');
INSERT INTO post (id, title, contents, athor_id) 
VALUES (5, 'HUMMMMM', 'SHITTTTT', 1);	

-- 게시판의 회원을 모두 DELETE하되, 기존에 POSTING된 글은 삭제되지 않고 남아있도록 하여라
DELETE FROM post; --author_id가 id를 참조하고 있기에 삭제가 안됨
UPDATE post SET author_id = null WHERE author_id is not null; -- 따라서 author_id를 null로 설정
DELETE FROM post; -- 지워짐

-- post의 글을 3개만 조회하되, title을 기준으로 오름차순, 만약 제목이 같은경우 contents로 내림차순 조회
SELECT * FROM post ORDER BY title, contents DESC LIMIT 3;
