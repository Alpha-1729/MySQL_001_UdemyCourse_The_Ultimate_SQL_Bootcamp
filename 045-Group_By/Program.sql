-- Group By

/*
>>>> GROUP BY summarizes or aggregates identical data into single rows.
>>>>
>>>>
>>>>
*/

-- Getting the unique author_lname.
SELECT author_lname FROM books GROUP BY author_lname;

-- Getting the number of books written by each author.
SELECT author_lname, COUNT(*) AS BooksWritten FROM books GROUP BY author_lname;

-- Getting the number of books released in each year.
SELECT released_year, COUNT(*) AS TotalBooksReleased FROM books GROUP BY released_year;

