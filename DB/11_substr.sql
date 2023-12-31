-- 11_substr.sql

-- SELECT SUBSTR(<str>, <start>, <length>)
-- SELECT SUBSTR(<str>, <start>)

SELECT SUBSTR('HELLO, WORLD', 1, 4); 
SELECT SUBSTR('HELLO, WORLD', 2, 4); 

SELECT SUBSTR('HELLO, WORLD', 1); 
SELECT SUBSTR('HELLO, WORLD', 7);
SELECT SUBSTR('HELLO, WORLD', 8);
SELECT SUBSTR('HELLO, WORLD', -5);
SELECT SUBSTR('HELLO, WORLD', -5, 2);

SELECT CONCAT(author_fname, '!!!') FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) FROM books;

SELECT CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
       CONCAT(SUBSTR(author_lname, 1, 1), '. ', author_fname) AS 'name'
FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) AS full_name
FROM books;