-- Logical Or

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' OR released_year > 2010;

SELECT 1 > 0 OR 8 > 9;