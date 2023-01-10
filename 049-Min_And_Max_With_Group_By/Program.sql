-- Min And Max With Group By

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Find the year each author published their first book.
SELECT author_lname, author_fname, MIN(released_year) FROM books GROUP BY author_lname, author_fname;

-- Find the year each author published their first book, last book, book count and max page count.
SELECT author_lname, author_fname, COUNT(*) AS BooksCount, MIN(released_year) AS FirstRelease, MAX(released_year) AS LastRelease, MAX(pages) AS  MaxPageCount FROM books GROUP BY author_lname, author_fname;
