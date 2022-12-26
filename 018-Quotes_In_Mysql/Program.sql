-- Quotes In Mysql

/*
>>>> Always use single quotes for varchar fields.
>>>>
>>>>
>>>>
*/

-- If you have single quotes inside varchar fields, escape the single quotes using backslash.
CREATE TABLE ads
(
    dialogue VARCHAR(50)
);

INSERT INTO ads (dialogue)
VALUES ('she said marios\'s pizza');
