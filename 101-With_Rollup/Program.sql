-- With Rollup

/*
>>>>
>>>>
>>>>
>>>>
*/

-- With Rollup combine the functionality of both of the below query.
--------------------------------------------------------------------
SELECT AVG(rating) FROM full_reviews;
SELECT
	title
	,AVG(rating)
FROM full_reviews
GROUP BY title;
--------------------------------------------------------------------

-- With Rollup -> with single column in group by.
SELECT
	title
	,AVG(rating)
FROM full_reviews
GROUP BY title WITH ROLLUP;

SELECT
	title
	,COUNT(rating)
FROM full_reviews
GROUP BY title WITH ROLLUP;

-- With Rollup -> with single column in group by.
SELECT
	released_year
	,genre
	,AVG(rating)
FROM full_reviews
GROUP BY released_year, genre WITH ROLLUP;