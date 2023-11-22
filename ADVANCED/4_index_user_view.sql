-- index
 - 조회는 쉬우나 삽입, 수정이 힘들다
   낮은 카디널리티에 인덱스를 설정하면, 인덱스를 사용한 검색이 전체 테이블 스캔 만큼이나 비효율적
 - 중복도가 높으면 높은 카디널리티, 낮은 카디널리티 = 중복도가 낮음 
   pk, unique 는 카디널리티가 높아서 알아서 sql이 인덱스로 잡아버림
   직접 인덱스를 만들때 문제
 - 카디널리티가 높은곳에 index를 건다
   조회조건걸려 빈번하게 조회되는 컬럼에 index를 건다.

-- 단일 컬럼 index : 
CREATE INDEX index_name ON 테이블명(컬럼명);
-- 복합(다중 컬럼) 인덱스 생성 : 
CREATE INDEX index_name ON 테이블명(컬럼1, 컬럼2);


-- 사용자 관리
-- 사용자 조회
select * from mysql.user;
-- 사용자 생성
CREATE USER '유저명'@'localhost' IDENTIFIED BY '패스워드';
    -- (로컬호스트)
    create user 'user1'@'localhost' identified by '1234';
    -- (원격 접속)
    create user 'user1'@'%' identified by '1234';
-- 권한 보기
show grants for 'user1'@'localhost';
-- 권한 부여
grant insert on board.author to 'user1'@'localhost';
-- 권한 뺏기
revoke insert on board.author from 'user1'@'localhost';
-- 권환 변경사항 적용
flush privileges;


-- VIEW
: 데이터베이스의 테이블과 유사한 구조를 가지지만, 가상의 테이블로서
  실제 데이터를 저장하지 않는 데이터베이스. 실제 데이터베이스를 참조만 한다.

-- 뷰 생성 문법
CREATE VIEW 뷰이름 AS
SELECT 컬럼1, 컬럼2, ...
FROM 테이블명;

-- author 테이블에서 name, email만 조회가 가능한 view 만들기
CREATE VIEW author_view AS
SELECT name, email
FROM author;




