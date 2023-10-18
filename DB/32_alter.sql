-- 32_alter.sql
DESC companies;
-- CRDU
-- Add Column
ALTER TABLE companies ADD COLUMN phone VARCHAR(15);

-- 논리적 오류
ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL;

ALTER TABLE companies
ADD COLUMN income INT NOT NULL DEFAULT 1;

-- DELETE Column
ALTER TABLE compaines
DROP COLUMN phone;

-- Rename Table
RENAME TABLE companies TO suppliers;
ALTER TABLE suppliers RENAME TO companies;

-- Rename Column
ALTER TABLE companies
RENAME COLUMN name TO company_name;

-- Update Column
Alter TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT '???';

-- Rename & Update Column
ALTER TABLE companies
CHANGE company_name name VARCHAR(255) DEFAULT '???' NOT NULL;

-- Update Constraints
ALTER TABLE houses
ADD CONSTRAINT positive_but_price CHECK (buy_price >= 0);

INSERT INTO houses(buy_price, sell_price)
VALUES(-1, -2);

ALTER TABLE houses DROP CONSTRAINT positive_buy_pirce;