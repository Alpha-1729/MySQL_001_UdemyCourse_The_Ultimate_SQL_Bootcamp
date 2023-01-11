-- Decimal

/*
>>>> To show the warning message when executing the query in the command line.
		After executing the query, run the below command on the command line.
		SHOW WARNINGS;
>>>>
>>>>
>>>>
*/

-- DECIMAL(A, B)
-- A -> Total number of digits including the decimal number.
-- B -> Total digits after decimal.

CREATE TABLE products
(
	price DECIMAL(5, 2)
);

INSERT INTO products (price) VALUES(12.22);
INSERT INTO products (price) VALUES(1201.22); -- Invalid
INSERT INTO products (price) VALUES(120.222); -- Valid
