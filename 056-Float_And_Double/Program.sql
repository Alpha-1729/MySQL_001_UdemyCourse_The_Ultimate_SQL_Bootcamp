-- Float And Double

/*
>>>> Difference between float and double is attached in the screenshot.
>>>> FLOAT VS DOUBLE Reference.
		https://dev.mysql.com/doc/refman/8.0/en/floating-point-types.html
>>>> ROUND Reference.
		https://www.w3schools.com/sqL/func_mysql_round.asp
>>>>
*/

-- Issue related with FLOAT (Precision 7 digits).
-- Same issue also arises with DOUBLE(Precision 15 digits).
CREATE TABLE thingies( price FLOAT);
INSERT INTO thingies(price) VALUES(88.45);  -- Valid
INSERT INTO thingies(price) VALUES(12345678.45);  -- Invalid, this will be stored as 12345670 in db.

SELECT ROUND(3.15); -- Rounded to nearest integer 3.
SELECT ROUND(3.89); -- Rounded to nearest integer 4.
SELECT ROUND(3.1521321, 2); -- Rounded off to two decimal places.