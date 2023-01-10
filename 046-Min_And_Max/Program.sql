-- Min And Max

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Find the minimum released year.
SELECT MIN(released_year) FROM books;

-- Find maximum number of pages in a book.
SELECT MAX(pages) FROM books;

-- Combining max and min.
SELECT MIN(author_lname), MAX(author_lname) FROM books;