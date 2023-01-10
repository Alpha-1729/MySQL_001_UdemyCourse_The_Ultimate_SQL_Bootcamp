-- Like

/*
>>>> Wildcards
        % -> means any number of characters.
        _ -> means exactly one character.
>>>>
>>>>
>>>>
*/

SELECT * FROM books WHERE author_fname LIKE '%da%';

SELECT * FROM books WHERE author_fname LIKE '____';

-- Select all authors whose first name ends with a.
SELECT * FROM books WHERE author_fname LIKE '%a';

