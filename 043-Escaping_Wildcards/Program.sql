-- Escaping Wildcards

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Searching for a % sign in the field.
SELECT * FROM books WHERE author_fname LIKE '%\%%';

-- Searching for a underscore.
SELECT * FROM books WHERE author_fname LIKE '%\_%';