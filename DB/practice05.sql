-- practice05.sql

-- 이름이 Jackson 인 고양이의 이름을 Jack 으로 바꾸기
-- Ringo 의 종을 ‘British Shorthair’ 로 바꾸기
-- 종이 Maine Coon 인 고양이들의 나이를 12로 바꾸기

SELECT * FROM cats;
UPDATE cats SET name='Jack' WHERE name ='Jackson';
UPDATE cats SET breed='British Shorthair' WHERE name ='Ringo';
UPDATE cats SET age=12 WHERE breed ='Maine Coon';