-- 12_replace.sql 

SELECT REPLACE('HELLO WORLD', 'HELL', '****');
SELECT REPLACE('apple', 'p', 'P');

SELECT REPLACE(title, ' ', '-') AS 'new title' FROM books;
SELECT REPLACE(title, ' ', '-') AS new_title FROM books;
