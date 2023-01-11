-- Formatting Dates

/*
>>>> DATE_FORMAT Reference link:
        https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html
>>>>
>>>>
>>>>
*/

-- Formatting the date.
SELECT BirthDate, DATE_FORMAT(BirthDate, '%a %b %D') FROM people;
SELECT BirthDate, DATE_FORMAT(BirthTime, 'Born on %r') FROM people;