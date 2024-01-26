-- 01_table.sql

CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);

-- TABLE 확인하는법
SHOW TABLES;
DESC cats;
DROP TABLE cats;

CREATE TABLE dogs1 (
	name VARCHAR(50),
    breed VARCHAR(50),
    age int
);