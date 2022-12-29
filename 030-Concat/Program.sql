-- Concat

/*
>>>> Concat
        Combining strings together.
>>>>
>>>>
>>>>
*/

-- CONCAT
SELECT CONCAT('Hello', 'World') AS MyMessage;

SELECT CONCAT(author_firstname, ' ', author_lastname) AS author_fullname FROM books;

-- CONCAT_WS -> Concat with separator.
SELECT CONCAT_WS("-", 'Hello', 'World') AS MyMsg;
