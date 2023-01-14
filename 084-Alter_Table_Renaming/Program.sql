-- Alter Table Renaming

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Renaming a table.
-- Short version
RENAME TABLE companies TO suppliers;

-- Long version.
ALTER TABLE suppliers RENAME TO companies;

-- Renaming columns.
ALTER TABLE companies RENAME COLUMN `name` TO company_name;