-- Alter Table Constraints

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Adding constraints.
ALTER TABLE houses ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);

-- Dropping constraints.
ALTER TABLE houses DROP CONSTRAINT positive_pprice;