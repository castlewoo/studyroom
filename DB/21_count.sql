-- 21_count.sql

USE book_shop;

SELECT COUNT(*) FROM books;
SELECT COUNT(id) FROM books;
SELECT COUNT(DISTINCT author_lname) FROM books;

SELECT COUNT(title) FROM books WHERE title LIKE '%the%';
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
-- Error (aggregated - non aggregated 는 동시에 조회 불가)
SELECT title, COUNT(*) FROM books WHERE title LIKE '%the%';
