-- Substring

/*
>>>> SUBSTRING() and SUBSTR()
		SUBSTR() is a synonym for SUBSTRING().
>>>>
>>>>
>>>>
*/

-- SUBSTRING(string, start, length)
-- Indexing start with 1.
SELECT SUBSTRING('Hello World', 1, 4) AS MyMsg;  -- Returns Hell
SELECT SUBSTRING('Hello World' FROM 1 FOR 4) AS MyMsg;  -- Returns Hell

SELECT SUBSTRING('Hello World', -2, 2) AS MyMsg; -- Returns ld
SELECT SUBSTRING('Hello World' FROM -2 FOR 2) AS MyMsg; -- Returns ld


-- SUBSTRING(string, start)
SELECT SUBSTRING('Hello World', 7) AS MyMsg; -- Returns World
SELECT SUBSTRING('Hello World' FROM 7) AS MyMsg; -- Returns World

SELECT SUBSTRING('Hello World', -3) AS MyMsg; -- Returns rld
SELECT SUBSTRING('Hello World' FROM -3) AS MyMsg; -- Returns rld




