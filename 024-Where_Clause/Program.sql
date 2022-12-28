-- Where Clause

/*
>>>> The condition inside the WHERE is case-insensitive.
>>>>
>>>>
>>>>
*/


SELECT * FROM cats WHERE age = 4;
SELECT `name`, age FROM cats WHERE age = 4;

SELECT * FROM cats WHERE `name` = 'Egg';
