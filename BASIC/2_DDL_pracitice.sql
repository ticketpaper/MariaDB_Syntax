-- post 테이블에 contents 컬럼 글자수 3000으로 변경
ALTER TABLE post MODIFY COLUMN contents VARCHAR(3000);

-- author 테이블에 address 컬럼 VARCHAR(255)로 추가
ALTER TABLE author ADD COLUMN address VARCHAR(255);

-- post테이블 생성문 미리 확인 -> 삭제 -> 재생성
SHOW CREATE TABLE post;
-- CREATE TABLE `post` (
--    `id` int(11) NOT NULL,
--    `title` varchar(255) DEFAULT NULL,
--    `contents` varchar(300) DEFAULT NULL,
--    `author_id` int(11) DEFAULT NULL,
--    PRIMARY KEY (`id`),
--    KEY `author_id` (`author_id`),
--    CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
--  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci 
DROP TABLE post; 
