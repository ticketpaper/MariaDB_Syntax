-- 데이터베이스의 구조와 데이터를 sql 형식으로 추출하는데 사용되는 방식
-- 주로 특정 DB에서 다른 DB로 데이터와 DB구조를 이전, 복사, 백업 할때 사용

-- procedure, function, trigger는 백업이 안된다.
procedure, function, trigger 까지 모두 백업하기(옵션 --routines  --trigger)
$ mysqldump --routines  --trigger -u유저이름 -p패스워드 DB명 > 백업파일

procedure function trigger만 백업하기
$ mysqldump --routines --no-create-info --no-data --no-create-db --skip-opt DB명 > 백업파일

-- dump 뜨기
mysqldump -u [username] -p --default-character-set=utf8mb4 [database_name] > dumpfile.sql
mysqldump -u root -p --default-character-set=utf8mb4 board > dumpfile.sql

-- dump로 복원하기
mysql -u root -p board < dumpfile.sql