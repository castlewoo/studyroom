-- 22_group_by.sql

SELECT author_lname FROM books;
SELECT author_lname FROM books GROUP BY author_lname;
SELECT DISTINCT author_lname FROM books;

SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;

-- 작가별 last_name 책이 많은 순
SELECT author_lname, COUNT(title) AS counter
FROM books GROUP BY author_lname
ORDER BY counter DESC;

SELECT author_lname, count(*) FROM books
GROUP BY author_lname, author_fname;

SELECT
	CONCAT(author_lname, ' ', author_fname) AS fullname,
	COUNT(*)
FROM books
GROUP BY fullname;