-- practice03.sql
-- practice 에서 진행
-- 테이블 이름 employees
-- 컬럼
-- id - 숫자, PK, 자동 오름
-- last_name 문자(적정), 필수
-- first_name 문자(적정), 필수
-- middle_name 문자(적정), 필수 아님
-- age 숫자, 필수
-- status 문자(적정), 필수, 기본 값('working')
-- test insert

USE pratice;
CREATE TABLE employees(
	id INT,
    last_name VARCHAR(20),
    first_name VARCHAR(20),
    middle_name VARCHAR(20),
    age INT,
    status VARCHAR(20)
)