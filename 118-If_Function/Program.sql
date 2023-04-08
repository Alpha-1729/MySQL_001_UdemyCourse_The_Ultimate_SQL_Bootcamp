-- If Function

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT
    first_name
    ,last_name
    ,IF(age > 60, 'Old', 'Young') AS age_category
FROM people;