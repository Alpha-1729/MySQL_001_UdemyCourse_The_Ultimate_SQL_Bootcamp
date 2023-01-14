-- Between

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT title, released_year FROM books
WHERE released_year BETWEEN 2000 AND 2015;

SELECT title, released_year FROM books
WHERE released_year NOT BETWEEN 2000 AND 2015;