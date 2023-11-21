-- author 테이블에 age 데이터 TINYINT UNSIGNED로 추가
ALTER TABLE author ADD COLUMN age TINYINT UNSIGNED;
-- 255이하로 insert, 255초과로 insert 테스트
INSERT INTO author(id, name, age) VALUES (1, 'LEE', 25);
INSERT INTO author(id, name, age) VALUES (2, 'LEE', 300); -- ERROR 1264 (22003): Out of range value for column 'age' at row 1
-- age의 범위를 벗어났다고 에러남 

-- post에 price라는 원고료컬럼을 추가, 원고료 컬럼은 총자릿수 10자리 및 소수점 단위는 3자리까지 가능
ALTER TABLE post ADD COLUMN price DECIMAL(10,3);

UPDATE post SET price=100.120 WHERE id = 2;
UPDATE post SET price=100.121111 WHERE id = 2; -- 소수점 범위는 벗어나도 반올림후 자름

-- BLOB 예시
CREATAE TABLE table_blob(id int, myimg longblob);
INSERT INTO table_blob (id, myimg) VALUES (1, LOAD_FILE("C:\tesst_picture\122894395.png"));
Select hex(myimg) from table_blob Where id =1;

-- role타입을 enum타입으로 변경하고 'user', 'admin'으로 지정, not null로 설정하되
-- 입력이 없을시에는 'user'로 세팅되도록 default 설정
ALTER TABLE author MODIFY COLUMN rol    e ENUM('user', 'admin') not null default 'user';
-- admin으로 데이터 세팅후 insert
INSERT INTO author(id, name, role) values (1, 'LEE', 'admin');
-- super-user 데이터로 insert
INSERT INTO author(id, name, role) values (2, 'KIM', 'super-user'); -- ERROR 1265:Data truncated for column 'role' at row 1
-- role 데이터 없이 insert
INSERT INTO author(id, name) values (2, 'KIM');

-- post테이블에 DATETIME으로 created_time 컬럼 추가, default로 현재시간 들어가도록 설정
ALTER TABLE post ADD COLUMN created_time DATETIME DEFAULT CURRENT_TIMESTAMP;

-- author 테이블의 id가 1, 2, 4는 아닌 데이터 조회
SELECT * FROM author WHERE id NOT IN (1,2,4);
-- post 테이블의 id가 2~4까지 데이터 조회
-- 1. between 활용
SELECT * FROM post WHERE id between 2 and 4;
-- 2. and 조건 활용
SELECT * FROM post WHERE 2 <= id && id <= 4;