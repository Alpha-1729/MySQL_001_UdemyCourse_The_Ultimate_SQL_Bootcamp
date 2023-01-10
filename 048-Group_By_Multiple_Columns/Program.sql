-- Group By Multiple Columns

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT author_lname, author_fname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

-- It is not always required to select all columns in the group by.
SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname, author_fname;

-- Group by using the column alias.
SELECT CONCAT(author_lname, ' ', author_fname) AS Author, COUNT(*) FROM books GROUP BY Author;
