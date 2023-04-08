-- Order By

/*
>>>> NULL will comes if we order by ASC in any columns.
>>>> ORDER BY will be Ascending by default.
>>>>
>>>>
*/

SELECT book_id, author_lname FROM books ORDER BY author_lname;
-- OR
SELECT book_id, author_lname FROM books ORDER BY author_lname ASC;

SELECT book_id, author_lname FROM books ORDER BY author_lname DESC;


-- Order by using the column index in the select.
SELECT author_fname, author_lname FROM books ORDER BY 2 DESC;

-- Order by multiple columns.
SELECT author_fname, author_lname FROM books ORDER BY author_fname ASC, author_lname DESC;

-- Using alias from select in order by.
SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books ORDER BY author
