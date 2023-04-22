-- First Trigger Part 1

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Create user table.
CREATE TABLE users
(
    username VARCHAR(100),
    age INT
);

INSERT INTO users (username, age) VALUES ("Bobby", 26);
SELECT * FROM users;

-- Creating database trigger.
DELIMITER $$

CREATE TRIGGER must_be_adult
    BEFORE INSERT ON users FOR EACH ROW
    BEGIN
        IF NEW.age < 18
            THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Must be an adult';
        END IF;
    END;
$$
DELIMITER;

INSERT INTO users (username, age) VALUES ("Sam", 12);
SELECT * FROM users;