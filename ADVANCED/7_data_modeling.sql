-- author 테이블을 나누어 author_address 테이블 추가
-- cloumn : country, state_city, details, zip_code, phone_number
-- on delete cascade 설정
-- 1:1 관계 설정
CREATE TABLE `author_address` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(50) DEFAULT NULL,
  `state_city` varchar(100) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `author_id` (`author_id`),
  CONSTRAINT `author_address_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

-- author와 post의 관계가 N:M즉, 여러명이서 한 post를 수정할 수 있도록 스키마 수정
create table post_author(
	id bigint auto_increment,
    post_id int not null,
    author_id int not null,
    PRIMARY key(id),
    foreign key (post_id) references post(id) on delete cascade,
    foreign key (author_id) references author(id) on delete cascade
);

필요 산출물
1. ER다이어그램을 통해 추상화
2. 릴레이셔널 스키마를 통해 구체화
3. 테이블 생성문(DDL)
4. 테스트케이스

