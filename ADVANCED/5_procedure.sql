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

-- post테이블에 쉽게 insert할 수 있는 post 관련 프로시저 생성
-- 사용자에게 title, contents, author_id만 입력받아 insert하는 insert문 생성
DELIMITER //
CREATE PROCEDURE easy_insert (IN title varchar(255),contents varchar(255), userID int )
BEGIN
	insert into post(title, contents, author_id) values(title, contents, userID);
END //
DELIMITER ;