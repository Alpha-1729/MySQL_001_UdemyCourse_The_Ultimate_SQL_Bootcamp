-- Working With Dates

/*
>>>>
>>>>
>>>>
>>>>
*/

CREATE TABLE people
(
	`Name` VARCHAR(50)
	,BirthDate DATE
	,BirthTime TIME
	,BirthDateTime DATETIME
);

INSERT INTO people (`Name`, BirthDate, BirthTime, BirthDateTime)
VALUES('Jim', '2000-09-01', '23:35:45', '2000-01-01 12:35:45');

SELECT * FROM people;