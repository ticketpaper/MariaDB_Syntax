-- author 테이블에 데이터 삽입
INSERT INTO author (id, name, email,password) 
VALUES (2, 'LEE', 'LEE2@naver.com','1234');

INSERT INTO author (id, name, email,password)  
VALUES (3, 'KIM', 'KIM@naver.com','1234');

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
