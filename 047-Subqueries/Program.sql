-- Subqueries

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Find the book with maximum number of pages.
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;
-- OR
-- Using subqueries.
SELECT title, pages FROM books WHERE pages = (SELECT MAX(pages) FROM books);