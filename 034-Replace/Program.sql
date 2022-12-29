-- Replace

/*
>>>> REPLACE
        Replace part of the string.
>>>>
>>>>
>>>>
*/

-- REPLACE(str, from_string, to_string)
SELECT REPLACE('Hello World', 'Hello', 'Zaba') AS MyMsg; -- Returns Zaba World
-- Replace is case sensitive
SELECT REPLACE('Hello World', 'hello', 'Zaba') AS MyMsg; -- Returns Hello World