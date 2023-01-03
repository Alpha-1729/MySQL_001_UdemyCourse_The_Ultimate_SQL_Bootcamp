-- Other String Functions

/*
>>>>
>>>>
>>>>
>>>>
*/

-- INSERT: Insert some string into another string.
-- INSERT(string, index, number of character to remove, replace string)
SELECT INSERT('Hello World', 6, 0, ' Good'); -- Characters should be removed.
SELECT INSERT('Hello World', 6, 3, ' Good'); -- Replace 3 character after the 6th character.

-- LEFT: Get the some character from the left of the string.
SELECT LEFT('Hello World', 5);

-- RIGHT: Get the some character from the right of the string.
SELECT RIGHT('Hello World', 5);

-- REPEAT: Repeatingly concat the string.
SELECT REPEAT('Hello ', 3);

-- TRIM: Remove the leading and tailing spaces.
SELECT TRIM(' Hello World  ');
SELECT TRIM(LEADING 'x' FROM 'xxxbarxxx');  -- Remove all x from the front.
SELECT TRIM(BOTH 'x' FROM 'xxxbarxxx');  -- Remove all x from both sides
SELECT TRIM(TRAILING 'xyz' FROM 'barxxyz'); -- Remove all xyz from the end.