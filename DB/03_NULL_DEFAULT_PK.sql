-- 03_null.SQL

USE pet_shop;

INSERT INTO dogs1 (name, breed)
VALUES ('멍뭉이', '시고르');

SELECT * FROM dogs1;

INSERT INTO dogs1() VALUES();

-- NEW TABLE
CREATE TABLE dogs2 (
	name VARCHAR (20) NOT NULL,
    age INT NOT NULL
);

DESC dogs2;

INSERT INTO dogs2(name) VALUES('doggy');
INSERT INTO dogs2(name, age) VALUES('doggy', 3);
SELECT * FROM dogs2;

DROP TABLE dogs2;