-- Unique Constraint

/*
>>>>
>>>>
>>>>
>>>>
*/

CREATE TABLE contacts
(
	`name` VARCHAR(100) NOT NULL
	,phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO contacts (`name`, phone)
VALUES ('tim', '1111111111');

INSERT INTO contacts (`name`, phone)  -- It will show duplicate entry error.
VALUES ('same', '1111111111');