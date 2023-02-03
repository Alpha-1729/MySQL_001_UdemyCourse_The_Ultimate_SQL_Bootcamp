-- Updateable Views

/*
>>>> Documentaion for updateable and insertable views.
		https://dev.mysql.com/doc/refman/8.0/en/view-updatability.html
>>>>
>>>>
>>>>
*/

-- Creating an updateable and insertable views.
CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

INSERT INTO ordered_series (title, released_year, genre)
VALUES ('The Great', 2020, 'Comedy');

DELETE FROM ordered_series WHERE title = 'The Great';

