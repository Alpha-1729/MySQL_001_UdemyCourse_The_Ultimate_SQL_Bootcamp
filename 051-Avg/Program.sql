-- Avg

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT AVG(pages) FROM books;

-- Find average quantities of books in each year.
SELECT released_year, AVG(stock_quantity), COUNT(*) FROM books GROUP BY released_year;