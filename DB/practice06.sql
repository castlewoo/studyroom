-- pratice06.sql

-- 나이가 4살인 모든 고양이를 삭제
-- 나이가 id와 같은 모든 고양이를 삭제
-- 모든 고양이 삭제

SELECT * FROM cats;
DELETE FROM cats WHERE age=4;
DELETE FROM cats WHERE age=id;
DELETE FROM cats;