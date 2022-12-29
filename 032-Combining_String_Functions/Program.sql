-- Combining String Functions

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Combining SUBSTRING() and CONCAT().
SELECT CONCAT(SUBSTRING(title FROM 1 FOR 10), '...') AS short_title FROM books;