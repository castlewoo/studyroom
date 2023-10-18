-- pratice10.sql
SELECT * FROM books;

-- 1980년 이전에 출간된 모든 책의 수
SELECT COUNT(*) FROM books WHERE released_year < 1980;

-- 작가 성이 Egeers 이거나 Chabon 인 모든 책 조회
SELECT * FROM books WHERE author_lname IN ('Eggers', 'Chabon');

-- 작가 성 Lahiri 가 2000년 이후 출간한 모든 책 조회
SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- 책 페이지가 100이사 200이하인 모든 책의 제목, 페이지 수 조회
SELECT title, pages FROM books WHERE pages BETWEEN 100 AND 200;

-- 작가의 성이 C 나 S로 시작하는 작가의 모든 책의 제목과 성 조회
SELECT title, author_lname FROM books
WHERE author_lname LIKE 'C%'
OR author_lname LIKE 'S%';

-- 제목에 stoires 가 들어가면 TYPE'A'
-- 제목에 kids 나 Heartbreaking이 들어가면 TYPE'B'
-- 그 외에는 모두 TYPE'C'
SELECT title, stock_quantity, 
	CASE
		WHEN title LIKE '%stories%' THEN 'A'
		WHEN title LIKE '%kids' or title LIKE '%Heartbreaking%' THEN 'B'
		ELSE 'C'
	END AS tpye
FROM books;
