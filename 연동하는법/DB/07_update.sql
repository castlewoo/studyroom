-- 07_update.sql

-- UPDATE <table> SET <col>=<val> WHERE <condition>;
UPDATE cats SET age=14 WHERE name='Misty';
UPDATE cats SET age=age+1 WHERE name='Jackson';
SELECT * FROM cats;