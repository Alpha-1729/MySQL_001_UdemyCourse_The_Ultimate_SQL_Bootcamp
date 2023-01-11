-- Date Math

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Date difference between two dates.
SELECT DATEDIFF(CURDATE(), BirthDate) FROM people;
-- OR
SELECT CURDATE() - INTERVAL 18 YEAR;
SELECT CURDATE() + INTERVAL 18 YEAR;

-- Adding 1 year to current date.
SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR);

-- Adding 1 month to current date.
SELECT DATE_ADD(CURDATE(), INTERVAL 1 MONTH);

-- Subtracting 1 month from current date.
SELECT DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

-- TIME
-- Adding time.
SELECT ADDTIME(NOW(),'1 1:1:1.000002');

-- Subtracting time.
SELECT SUBTIME(NOW(),'1 1:1:1.000002');

-- Difference between two time.
SELECT TIMEDIFF(CURTIME(), '07:00:00');