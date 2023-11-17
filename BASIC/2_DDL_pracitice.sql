-- post 테이블에 contents 컬럼 글자수 3000으로 변경
ALTER TABLE post MODIFY COLUMN contents VARCHAR(3000);

-- author 테이블에 address 컬럼 VARCHAR(255)로 추가
ALTER TABLE author ADD COLUMN address VARCHAR(255);

-- post테이블 생성문 미리 확인 -> 삭제 -> 재생성
SHOW CREATE TABLE post;

DROP TABLE post; 
