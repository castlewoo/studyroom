-- 30_unique.sql
-- 유니크는 중복을 못하게 하는것
CREATE DATABASE constraints_alter;

USE constraints_alter;

CREATE TABLE contacts (
	name VARCHAR(100) NOT NULL,
	phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO contacts (name, phone)
VALUES ('박박박', '01012345678');