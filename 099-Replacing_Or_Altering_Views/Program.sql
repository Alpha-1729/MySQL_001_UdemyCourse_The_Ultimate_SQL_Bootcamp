-- Replacing Or Altering Views

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Updating a view.
CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;

-- OR

ALTER VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year ASC;

-- Dropping a view.
DROP VIEW ordered_series;