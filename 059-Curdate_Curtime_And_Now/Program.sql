-- Curdate Curtime And Now

/*
>>>> CURDATE()
		Same as CURRENT_DATE(), CURRENT_DATE
>>>> CURTIME()
		Same as CURRENT_TIME(), CURRENT_TIME
>>>> NOW()
		Same as CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP
>>>>
*/

SELECT CURTIME();
SELECT CURDATE();
SELECT NOW(); -- It willl give current datetime.

INSERT INTO people (`Name`, BirthDate, BirthTime, BirthDateTime)
VALUES('Enu', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;