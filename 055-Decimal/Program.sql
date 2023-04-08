-- Decimal

/*
>>>> To show the warning message when executing the query in the command line.
		After executing the query, run the below command on the command line.
		SHOW WARNINGS;
>>>> If the number you are inserting into the decimal column is greater than the declared value, max of declared value will be stored in the db.
		Eg: If DECIMAL(5, 2)
			If you are inserting 323122 into the db, 999.99 will be stored in the db.
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
