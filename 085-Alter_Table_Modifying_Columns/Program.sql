-- Alter Table Modifying Columns

/*
>>>>
>>>>
>>>>
>>>>
*/

-- If you want to change the datatype of the column.
ALTER TABLE companies
MODIFY company_name VARCHAR(50);

-- If you want to rename and change the column datatype.
ALTER TABLE companies
CHANGE COLUMN company_name `name` VARCHAR(50);

