-- Multiple Column Constraints

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Conbining the uniqueness of multiple columns.
-- Example 1
CREATE TABLE companies
(
	`name` VARCHAR(50) NOT NULL
	,address VARCHAR(50) NOT NULL
	,CONSTRAINT name_address_combo UNIQUE (`name`, address)
);

INSERT INTO companies (`name`, address)
VALUES ('Safist', 'peacock avenue');

INSERT INTO companies (`name`, address) -- This will show an error.
VALUES ('Safist', 'peacock avenue');

-- Example 2
CREATE TABLE houses
(
	purchase_price INT NOT NULL
	,sale_price INT NOT NULL
	,CONSTRAINT sprice_gt_pprice CHECK (sale_price >= purchase_price)
);

INSERT INTO houses (purchase_price, sale_price)
VALUES (1200, 1220);

INSERT INTO houses (purchase_price, sale_price) -- It will show an error.
VALUES (1000, 900); 