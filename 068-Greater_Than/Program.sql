-- Greater Than

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT * FROM books WHERE released_year > 2000;

-- The output of the comparison check in the select statement will be 1 or 0.
SELECT 80 > 100; -- Output is 0
SELECT 110 > 100; -- Output is 1
SELECT 'a' = 'A'; -- Output is 1
SELECT 'a' > 'b'; -- Output is 0


-- Comparing values with NULL will give NULL.
SELECT 1 > NULL;