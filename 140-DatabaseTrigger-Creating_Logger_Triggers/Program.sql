-- Creating Logger Triggers

/*
>>>>
>>>>
>>>>
>>>>
*/

--  Creating unfollows table.
CREATE TABLE unfollows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);

-- Creating trigger to store the unfollow details.
DELIMITER $$
CREATE TRIGGER capture_unfollow
    AFTER DELETE ON follows FOR EACH ROW
    BEGIN
        INSERT INTO unfollows
        SET follower_id = OLD.follower_id,
            followee_id = OLD.followee_id;

        -- OR

        INSERT INTO unfollows(follower_id, followee_id) VALUES (OLD.follower_id, OLD.followee_id);
    END
END $$

DELIMITER ;