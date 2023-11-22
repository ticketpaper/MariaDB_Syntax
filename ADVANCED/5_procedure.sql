-- 저장 프로시저 : 복잡한 쿼리 db에 넣어놔서 실행할 수 있게함
-- 프로시저 생성
DELIMITER //
CREATE PROCEDURE procedure_name (parameters) -- ex) getUser(IN userId INT)
BEGIN
  -- SQL문법
END //
DELIMITER ;

-- 프로시저 호출
CALL 프로시저명();

-- 생성한 프로시저 명령어 확인
show create procedure getUser;

-- 특정 사용자에게 프로시저 실행할 수 있는 권한을 줄 수있다.

-- 파라미터는 생략가능하고, 함수와 같이 파라미터를 전달하여 실행하는 것도 가능
-- 기본 형식은 (IN 변수명 변수타입)

-- 변수 선언
DECLARE 변수명 변수타입 [DEFAULT default_value];
: 반드시 프로시저나 함수의 본문 시작부분, 즉 BEGIN 바로 뒤에 위치

-- 변수 수정
SET 변수명 = 수정할 값;

-- 제어문
 - if 문
    IF 조건식 THEN 
        조건이 참일 때 실행할 명령
    ELSE
        조건이 거짓일 떄 실행할 명령
    END IF;

- while 문
    WHILE 조건식 DO
        조건이 참일 동안 반복 실행할 명령
    END WHILE;

-----------------------------------------------------------------------------------------------

-- post테이블에 쉽게 insert할 수 있는 post 관련 프로시저 생성
-- 사용자에게 title, contents, author_id만 입력받아 insert하는 insert문 생성
DELIMITER //
CREATE PROCEDURE easy_insert (IN title varchar(255),contents varchar(255), userID int )
BEGIN
	insert into post(title, contents, author_id) values(title, contents, userID);
END //
DELIMITER ;

-- post테이블에 if문을 활용하여 고액 원고료 작가 조회
DELIMITER //
CREATE PROCEDURE check_procedure (IN userID int)
BEGIN
	DECLARE price int default 0;
    select avg(price) into price from post where author_id = userID;
	if price > 1000 THEN 
		select '고액의 원고료 작가입니다' as message;
	else 
		select '고액의 원고료 작가가 아닙니다' as message;
	END IF;
END //
DELIMITER ;
-- post테이블에 insert 반복;
DELIMITER //
CREATE PROCEDURE insert_100 ()
BEGIN
	DECLARE a int default 0;
    while a<100 DO
		insert into post(title, contents) values (concat('hello wolrd',a), concat('hello wolrd',a));
        SET a = a + 1;
	end while;
END //
DELIMITER ;