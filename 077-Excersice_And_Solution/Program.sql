-- Excersice And Solution

/*
>>>> The question is attached as the screenshot.
>>>>
>>>>
>>>>
*/


SELECT 
	author_fname
	,author_lname
	,CASE
		WHEN COUNT(*) = 1 THEN '1 book'
		ELSE CONCAT(COUNT(*), ' books')
	END AS BooksCount
FROM books
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;