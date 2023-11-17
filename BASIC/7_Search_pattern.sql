-- LIKE
-- 특정 패턴을 포함하는 데이터만을 검색하기 위한 와일드 카드 문자, 일반적으로 %와 함께 사용됨
SELECT * FROM author WHERE name LIKE '홍%'; -- 홍으로 시작하는 이름 조회 
SELECT * FROM author WHERE name LIKE '%길%'; -- 길을 포함한 이름 조회
SELECT * FROM author WHERE name LIKE '%동'; -- 동으로 끝나는 이름 조회

-- NOT LIKE
SELECT * FROM author WHERE name NOT LIKE '홍%'; -- 홍으로 시작하는 이름을 제외하고 조회

-- REGEXP
-- 정규표현식을 토대로 패턴 연산 수행
SELECT * FROM author WHERE name REGEXP '[a-z]'; -- 영어인 이름을 조회
SELECT * FROM author WHERE name REGEXP '[가-힣]'; -- 한글인 이름을 조회

-- NOT REGEXP
