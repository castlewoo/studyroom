-- 16_etc_functions.sql

SELECT INSERT('HELLO justin', 6, 0, ' THERE');
SELECT INSERT('HELLO justin', 3, 0, ' THERE');

SELECT LEFT('omglol!', 3);
SELECT RIGHT('omglol!', 4);
SELECT LEFT(author_lname, 1) FROM books;
SELECT SUBSTR(author_lname, 1, 1) FROM books;

SELECT REPEAT('ha', 5);

SELECT TRIM('    wow    ');