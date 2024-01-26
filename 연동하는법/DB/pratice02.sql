-- pratice02

-- 1. practice db 사용
-- 2. 테이블 people 생성
--  3. first_name VARCHAR(20)
--  4. last_name VARCHAR(20)
--  5. age INT
-- 6. 테이블 확인
-- 7. 데이터 입력 (3명)
-- 8. people 테이블의 모든 데이터 조회

USE pratice;
CREATE TABLE people(
	frist_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT
);

DESC people;

INSERT INTO people (frist_name, last_name, age)
VALUES
	('성우', '김', 26),
    ('동현', '이', 26),
    ('희진', '신', 25);
    
SELECT * FROM people;
DROP TABLE people;