-- Instagram Challenges

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Challenge 2
-- The day in which the most users register.
SELECT
    DAYNAME(created_at) AS day_joined
    ,COUNT(*) AS total
FROM users
GROUP BY day_joined
ORDER BY total DESC
LIMIT 2;

-- Challenge 3
-- Find users who have never post a photo.
SELECT
    u.username
FROM users u
LEFT JOIN photos p
    ON p.user_id = u.id
WHERE p.id IS NULL;


-- Challenge 4
-- Identify the most popular photo and user who creted it (Photo with most likes).
SELECT
    u.username
    ,p.id
    ,p.image_url
    ,COUNT(*) AS total
FROM photos p
INNER JOIN likes l
    ON l.photo_id = p.id
INNER JOIN users u
    ON u.id = p.user_id
GROUP BY p.id
ORDER BY total DESC
LIMIT 1;

-- Challenge 5
-- Calculate the avg number of photo per user.
-- Total number of photos / total number of users.
SELECT
((SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users)) AS avg_photo_per_user;

-- Challenge 6
-- What are the top 5 most commonly used hashtags.

SELECT
    t.tag_name
    ,COUNT(*) AS total
FROM tags t
INNER JOIN photo_tags pt
    ON pt.tag_id = t.id
GROUP BY pt.tag_id
ORDER BY total DESC
LIMIT 5;

-- Challenge 
-- Find users who have liked every single photo on the site.

SELECT 
    u.username
    ,COUNT(*) AS num_likes
FROM users u
INNER JOIN likes l
    ON u.id = l.user_id
GROUP BY u.id
HAVING num_likes = (SELECT COUNT(*) FROM photos);