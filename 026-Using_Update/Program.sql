-- Using Update

/*
>>>> To prevent any unexpected updates, Try selecting before updates.
>>>>
>>>>
>>>>
*/

-- Updating single column.
UPDATE cats SET breed = 'Shorthair'
WHERE breed = 'Tabby';

-- Updating multiple columns.
UPDATE cats
SET breed = 'Shorthair', age = 10
WHERE breed = 'Tabby';