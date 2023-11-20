-- 내부적으로 count 값을 가지고 있어 만약 6을 지우고 다시 만드면 6이 아니라 7임
-- id는 fk 바라보는 애를 위한 것임
-- set null, cascade, restric 

-- post 테이블의 id에 autho_increment 설정
ALTER TABLE post MODIFY column id int auto_increment;

-- author 테이블 email에 UNIQUE제약 조건 추가
ALTER TABLE 테이블명 MODIFY COLUMN 필드명 필드타입 UNIQUE; -- 방법.1
ALTER TABLE 테이블명 ADD CONSTRAINT 제약조건명 UNIQUE(필드명); -- 방법.2
ALTER TABLE 테이블명 DROP CONSTRAINT 제약조건명; -- 유니크 지우기
ALTER TABLE 테이블명 DROP FOREIGN KEY 제약조건명; -- 외래키 지우기

-- 테이블 참조관계 및 제약조건 조회
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'author'; 

-- 1. 컬럼 제약조건으로 추가
ALTER TABLE author modify column email varchar(255) unique;
-- 2. 제약조건 제거 및 index 제거
alter table author drop CONSTRAINT email;
-- 3. 테이블 제약조건 추가형식으로 추가
ALTER TABLE author ADD CONSTRAINT unique_email UNIQUE(email);

-- post테이블에 on update cascade 설정
-- 1. 기존 foreing key 제약조건 조회후 삭제
SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'post';
alter table post drop foreign key post_ibfk_1;
alter table post drop index author_id;
-- 2. 새롭게 제약조건 추가
alter table post add constraint post_author_fk foreign key(author_id) 
references author(id) on update cascade;
-- author id를 update했을때 post author_id가 같이 바뀌는지 확인

-- on delete set null 설정
alter table post add constraint post_author_fk foreign key(author_id) 
references author(id) on delete set null on update set null;
-- author에서 delete했을때 post author_id가 null값이 되는지 확인
-- author에서 id를 update 했을때 post author_id가 null값이 되는지 확인

-- post테이블에서 id, title, contents, 그리고 author_id의 경우 author_type이라는 이름으로 조회
-- author_id가 만약 1이면 first_author, 2이면 second_author로 조회가 되도록하고 
--3이상 그외의 경우 etc_authors로 조회도록 하여라

-- 1. case when 사용
select id, title, contents,
CASE author_id
    WHEN 1 THEN 'first author' 
    WHEN 2 THEN 'second author'
    else 'others'
END
as author_type from post;

select id, title, contents,
CASE 
    WHEN author_id = 1 THEN 'first author' 
    WHEN author_id = 2 THEN 'second author'
    when author_id is null then 'anonymons'
    else 'others'
END
as author_type from post;
-- 2. if문 사용하여 동일하게 출력
select id, title, contents, 
if(author_id = 1,'first author', if(author_id = 2, 'second author', 'anonymous')) 
as author_type from post;

-- 만약 id가 1이면 first author 그렇지 않은 경우 others로 출력
-- id, title, contents, author_type 형식으로 출력
select id, title, contents, 
if(author_id = 1,'first author','others') 
as author_type from post;

    
select id, title, contents, ifnull(author_id, 'anonymous') as author_type from post;
select id, title, contents, if(author_id is null, 'anonymous', author_id) as author_type from post;
