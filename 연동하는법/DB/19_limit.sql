-- 19_limit.sql

SELECT * FROM books LIMIT 5;

SELECT * FROM books
ORDER BY stock_quantity DESC
LIMIT 5;

-- LIMIT 뒤에 숫자를 2개 쓰면, 시작, 개수
SELECT * FROM books LIMiT 0, 5;
SELECT * FROM books LIMiT 5, 5;
SELECT * FROM books LIMiT 10, 5;

-- LIMIT 은 종료지점이 부족하면 그냥 최대한 가져옴SELECT * FROM books LIMiT 15, 20;
SELECT * FROM books LIMiT 100000;