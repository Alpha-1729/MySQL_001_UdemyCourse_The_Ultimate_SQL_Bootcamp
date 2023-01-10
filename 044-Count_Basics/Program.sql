-- Count Basics

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Get the number of rows in a table.
SELECT COUNT(*) FROM books;

-- Get the count of non-null values in a column.
SELECT COUNT(author_fname) FROM books;

-- Get the count of unique values in a column.
SELECT COUNT(DISTINCT author_fname) FROM books;

