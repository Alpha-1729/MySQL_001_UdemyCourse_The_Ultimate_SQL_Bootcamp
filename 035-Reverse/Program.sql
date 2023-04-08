-- Reverse

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Reverse a string.
SELECT REVERSE('Hello');  -- Returns olleH

SELECT REVERSE(NULL); -- Returns NULL

-- Create palindrome for a word.
SELECT CONCAT('Hello', REVERSE('Hello')) AS palindrome;