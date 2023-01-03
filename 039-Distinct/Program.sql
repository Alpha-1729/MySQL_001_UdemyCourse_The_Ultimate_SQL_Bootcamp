-- Distinct

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT DISTINCT `name` FROM cats;

-- Getting the distinct full name of the authors.
SELECT DISTINCT author_fname, author_lname FROM books;
-- OR
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;