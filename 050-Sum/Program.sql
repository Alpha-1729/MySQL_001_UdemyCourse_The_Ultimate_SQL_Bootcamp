-- Sum

/*
>>>> SUM will return 0 on varchar columns.
>>>>
>>>>
>>>>
*/

SELECT SUM(pages) FROM books;

-- Find number of pages written by each author.
SELECT author_lname, SUM(pages) FROM books GROUP BY author_lname;
