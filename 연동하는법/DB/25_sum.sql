-- 25_sum.sql

-- GROUP BY 없을 경우
SELECT SUM(pages), SUM(stock_quantity) FROM books;

-- 작가 별 재고수의 총합
-- GROUP BY 있을 경우
SELECT 
	author_fname,
    author_lname,
    SUM(stock_quantity)
FROM books
GROUP BY author_fname, author_lname;