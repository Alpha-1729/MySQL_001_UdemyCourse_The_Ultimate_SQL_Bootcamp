-- Date Functions

/*
>>>> Reference link:
		https://dev.mysql.com/doc/refman/5.7/en/date-and-time-functions.html
>>>>
>>>>
>>>>
*/

-- Getting the day of the date.
SELECT BirthDate, DAY(BirthDate) FROM people;

-- Getting the day of the weeek.
-- 1 -> Sunday
-- 2 -> Monday
-- 7 -> Saturday
SELECT BirthDate, DAYOFWEEK(BirthDate) FROM people;

-- Getting the day of the year.
SELECT BirthDate, DAYOFYEAR(BirthDate) FROM people;

-- Getting the month name.
SELECT BirthDate, MONTHNAME(BirthDate) FROM people;

-- Getting the week of the year.
SELECT BirthDate, WEEK(BirthDate) FROM people;

-- If we pass the time column to the MONTHNAME() functions, it will be calculated based on the current date.
SELECT BirthDate, MONTHNAME(BirthTime) FROM people;

