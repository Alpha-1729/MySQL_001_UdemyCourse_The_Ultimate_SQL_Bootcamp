-- Named Constraints

/*
>>>> How mysql create a contraint name.
		table_name + chk + 1
		next contraint name in the table should be -> table_name + chk + 2
>>>>
>>>>
>>>>
*/

-- Adding named constraints.
CREATE TABLE partiers
(
	`name` VARCHAR(50)
	,age INT
	,CONSTRAINT age_over_18 CHECK (age > 18)
);

INSERT INTO partiers (`name`, age)
VALUES ('sam', 20);

INSERT INTO partiers (`name`, age) -- This will show age constraint error.
VALUES ('sam', 17);