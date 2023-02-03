-- Strict Trans Tables

/*
>>>> Strict mode controls how MySQL handles invalid or missing values in data-change statements such as INSERT or UPDATE. A value can be invalid for several reasons. For example, it might have the wrong data type for the column, or it might be out of range. A value is missing when a new row to be inserted does not contain a value for a non-NULL column that has no explicit DEFAULT clause in its definition. (For a NULL column, NULL is inserted if the value is missing.) Strict mode also affects DDL statements such as CREATE TABLE.
>>>> Server SQL Modes Documentation.
		https://dev.mysql.com/doc/refman/5.7/en/sql-mode.html#sql-mode-strict
>>>>
>>>>
*/

-- This will show an error.
INSERT INTO reviews (rating)
VALUES ('hii');

-- Disable all SQL Modes.
SET SESSION SQL_MODE = '';
SELECT @@SESSION.SQL_MODE;

-- This will not give an error.
INSERT INTO reviews (rating)
VALUES ('hii');