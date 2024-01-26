-- pratice04.sql

-- 모든 고양이의 id 만 조회
-- 모든 고양이의 이름과 종만 조회
-- 종이 Tabby 인 고양이의 이름과 나이만 조회
-- id 와 나이가 같은 고양이의 id와 나이만 조회

SELECT * FROM cats;
SELECT id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats WHERE breed='Tabby';
SELECT id, age FROM cats WHERE id=age;
SELECT id AS '번호', age AS '나이' FROM cats WHERE id=age;