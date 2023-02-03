-- Having Clause

/*
>>>> Having clause is used with GROUP BY.
>>>>
>>>>
>>>>
*/

SELECT 
	title
	,AVG(rating)
    ,COUNT(rating) AS review_count
FROM full_reviews
GROUP BY title HAVING COUNT(rating) > 1;
