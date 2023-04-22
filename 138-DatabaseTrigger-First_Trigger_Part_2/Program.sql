-- First Trigger Part 2

/*
>>>> NEW and OLD
        NEW refers to the data that is about to be inserted.
        OLD refers to the data that is deleted.
>>>> MySQL error messages
        Reference link: https://dev.mysql.com/doc/mysql-errors/8.0/en/server-error-reference.html
>>>> SQL STATE '45000'
        Represents unhandled user-defined exceptions.
>>>> A screenshot is attached for knowing more about the mysql errors.
>>>> DELIMITTER
        Delimitter keyword is used to change the default delimiter in mysql.
        That way all the codes related to CREATE TRIGGER is treated as one block of code.
        Dont forget to change the delimitter back to semicolon.
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
        IF NEW.age < 18 -- NEW refers to the data that is about to be inserted.
            THEN
                SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = 'Must be an adult';
        END IF;
    END;
$$
DELIMITER;

INSERT INTO users (username, age) VALUES ("Sam", 12);
SELECT * FROM users;