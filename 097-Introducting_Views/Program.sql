-- Introducting Views

/*
>>>> Views are like a virtual table.
>>>>
>>>>
>>>>
*/

-- Creating a view.
CREATE VIEW full_reviews AS
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
INNER JOIN series ON series.id = reviews.series_id
INNER JOIN reviewers ON reviewers.id = reviews.reviewer_id;

-- Using reviews.
SELECT * FROM full_reviews WHERE genre = 'Animation';
SELECT genre, AVG(rating) FROM full_reviews GROUP BY genre;