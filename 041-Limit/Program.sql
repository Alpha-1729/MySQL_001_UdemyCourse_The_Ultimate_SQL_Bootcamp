-- Limit

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT author_fname, author_lname, released_year FROM books ORDER BY released_year ASC LIMIT 5;
-- OR
SELECT author_fname, author_lname, released_year FROM books ORDER BY released_year ASC LIMIT 0, 5;

-- Getting the 5 rows from the second row.
SELECT author_fname, author_lname, released_year FROM books ORDER BY released_year ASC LIMIT 2, 5;

-- The count of the limiting rows can be greater than the totoal number of rows in the table.
-- It will returns the maximum results.
SELECT * FROM books LIMIT 100;
