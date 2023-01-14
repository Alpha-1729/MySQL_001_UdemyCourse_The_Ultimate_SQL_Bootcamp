-- Alter Tables Adding Columns

/*

>>>> Reference ALTER TABLE
		https://dev.mysql.com/doc/refman/5.7/en/alter-table.html
>>>>
>>>>
>>>>
*/

-- Adding a new column.
ALTER TABLE companies
ADD COLUMN city VARCHAR(25);