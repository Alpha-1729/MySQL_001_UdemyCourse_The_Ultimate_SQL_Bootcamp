-- Between

/*
>>>> If you want to use the DateTime/Date values in the BETWEEN operator, Cast the date properly.
>>>>
>>>>
>>>>
*/

SELECT title, released_year FROM books
WHERE released_year BETWEEN 2000 AND 2015;

SELECT title, released_year FROM books
WHERE released_year NOT BETWEEN 2000 AND 2015;

SELECT BirthDate FROM people WHERE BirthDate BETWEEN CAST('2017-05-02' AS DATETIME) AND CAST('2020-05-02' AS DATETIME);