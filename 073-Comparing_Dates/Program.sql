-- Comparing Dates

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT * FROM people WHERE BirthDate < '2005-01-01';

SELECT * FROM people WHERE YEAR(BirthDate) < 2005;

SELECT CAST('09:00:00' AS TIME);

SELECT * FROM people WHERE BirthTime BETWEEN CAST('12:00:00' AS TIME) AND CAST('16:00:00' AS TIME);

SELECT * FROM people WHERE HOUR(BirthTime) BETWEEN 12 AND 16;
