-- 02_insert_data.sql

USE pet_shop;

-- INSERT INTO <table>(<col1>, <col2>)
-- VALUES (<val1>, <val2>)

-- 값 넣기
INSERT INTO dogs1 (name, breed, age)
VALUES ('맥스', '말티즈', 4);

-- 안에 값 조회할때
SELECT * FROM dogs1;

INSERT INTO dogs1 (name, breed, age)
VALUES
	('짱구', '오크셔', 5),
    ('소리', '포메', 3),
    ('가을', '치와와', 10);