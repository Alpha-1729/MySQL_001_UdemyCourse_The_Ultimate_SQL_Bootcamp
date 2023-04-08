-- Logical And

/*
>>>> In MySQL V8.017 and below && is used insted of AND operator.
>>>>
>>>>
>>>>
*/

SELECT title, author_lname, released_year FROM books WHERE author_lname = 'Eggers' AND released_year > 2010;

SELECT 1 > 0 AND 8 > 9;