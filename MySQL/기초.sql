-- 데이터 베이스 만들기 
CREATE DATABASE mydata;

-- 만든 데이터베이스 보기
SHOW DATABASES;

-- 데이터베이스 삭제
DROP DATABASE mydata;  

-- 만약에 있으면 삭제해주고 없어도 에러나게 하지 말아달라는 뜻 
DROP DATABASE IF EXISTS mydata;

-- 데이터베이스 쓰기
CREATE DATABASE mydata;
USE mydata;