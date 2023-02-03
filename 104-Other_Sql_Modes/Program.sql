-- Other Sql Modes

/*
>>>> If "ONLY_FULL_GROUP_BY" SQL_MODE is enabled, We can only use columns specified in the group by clause.
>>>>
>>>>
>>>>
*/

-- Disable all SQL_MODE.
SET SESSION SQL_MODE = '';

SELECT title, rating FROM series
INNER JOIN reviews ON reviews.series_id = series.id
GROUP BY title;

SET SESSION SQL_MODE = 'ONLY_FULL_GROUP_BY';


-- Doesn't allow zero in date.
SET SESSION SQL_MODE = '';
SELECT DATE('2010-01-00');
SET SESSION SQL_MODE = 'NO_ZERO_IN_DATE';
SELECT DATE('2010-01-00'); -- It will show a warning, but NULL will be the output.

-- If 'STRICT_TRANS_TABLES' and 'NO_ZERO_IN_DATE' is enabled, Error will be shown in the above case.