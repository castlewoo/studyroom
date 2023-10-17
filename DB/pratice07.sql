-- pratice_07.sql
-- 책 제목의 공백(스페이스)를 -> 로 바꿔서 출력
SELECT * FROM books;
SELECT REPLACE(title, ' ', '->') AS title FROM books;

-- 작가의 성(lname)을 제대로/거꾸로 출력
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards 
FROM books;

-- 풀 네임(fname - lname)을 모두 대문자로 출력
SELECT UPPER(CONCAT(author_fname, ' ',author_lname)) AS 'full name in caps'
FROM books;

SELECT UPPER(CONCAT_WS(' ', author_fname, author_lname)) AS 'full name in caps'
FROM books; 
-- 책 제목과 출간 연도를 조합하여 문장으로 출력
SELECT CONCAT(title, ' was released in ', released_year) AS summary 
FROM books;
 
-- 책 제목과 제목 글자수를 출력
SELECT title, CHAR_LENGTH(title) AS 'character count' 
FROM books;
 
-- 짧은 제목(제목 앞 10글자와 뒤에 ... 으로 구성. 별칭은 short title
-- 작가 이름을 성, 이름 으로 구성. 별칭은 author
-- 재고를 12 in stock 과 같은 문장으로 구성. 별칭은 quantity
SELECT INSERT(title, 11, -3, '...') AS 'short title' FROM books;
SELECT CONCAT(author_lname, ',', author_fname) AS author FROM books;
SELECT CONCAT(stock_quantity, ' in stock') AS quantity FROM books;
 
SELECT 
	CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title',
	CONCAT(author_lname, ',', author_fname) AS author,
	CONCAT(stock_quantity, ' in stock') AS quantity 
FROM books;