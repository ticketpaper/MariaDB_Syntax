INSERT INTO author (id, name, email,password) 
VALUES (2, 'LEE', 'LEE2@naver.com',1234);

INSERT INTO author (id, name, email,password)  
VALUES (3, 'KIM', 'KIM@naver.com',1234);

INSERT INTO author (id, name, email,password)  
VALUES (3, 'CHOI', 'CHOI@naver.com',369);

INSERT INTO author (id, name, email,password)  
VALUES (4, 'CHOI', 'CHOI@naver.com',369);

INSERT INTO author (id, name, email,password,role) 
VALUES (5, 'BEAK', 'BEAK@naver.com',33124122, 123);

INSERT INTO post (id, title, contents, author_id)
VALUES (1, 'AAA', 'AAA', 1);

INSERT INTO post (id, title, contents, author_id)
VALUES (2, 'ZZZZZ', 'fdzz', 3);

INSERT INTO post (id, title, contents)
VALUES (3, 'WHY', 'WHY');

INSERT INTO post (id, title, contents)
VALUES (4, 'HUMMMMM', 'HUMMMMM');
--author_id는 NOT NULL이 아니기에 NULL값이 들어갈수있다.

INSERT INTO post (id, title, contents,athor_id) 
VALUES (4, 'HUMMMMM', 'HUMMMMM', 10);	
-- 해당 구문 실행시 author_id가 없는 컬럼을 참조해서 아래와 같은 에러 발생
-- Error Code: 1054. Unknown column 'athor_id' in 'field list'

