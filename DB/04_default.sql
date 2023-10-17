-- 04_default.sql

CREATE TABLE dogs3 (
	name VARCHAR(20) DEFAULT 'NO name',
    age INT DEFAULT 0
);

INSERT INTO dogs3 () VALUES ();

SELECT * FROM dogs3;

INSERT INTO dogs3(name) VALUES (NULL);

CREATE TABLE dogs4 (
	name VARCHAR(20) NOT NULL DEFAULT 'NO name',
    age INT NOT NULL DEFAULT 0
);

INSERT INTO dogs4(name) VAULES(NULL);