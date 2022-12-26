-- Introducing Primary Keys

/*
>>>> Primary is a Unique Identifier.
>>>> Primary key cannot be null.
        So don't use not null with primary keys.
>>>>
>>>>
*/
-- Adding Primary Key.
CREATE TABLE cats
(
    cat_id INT PRIMARY KEY
    ,`name` VARCHAR(50) NOT NULL
    ,age INT NOT NULL
);

-- Adding Primary Key (Another method)
CREATE TABLE cats
(
    cat_id INT
    ,`name` VARCHAR(50) NOT NULL
    ,age INT NOT NULL
    ,PRIMARY KEY (cat_id)
);

INSERT INTO cats (cat_id, `name`, age)
VALUES (1, 'Bingo', 12);

INSERT INTO cats (cat_id, `name`, age)
VALUES (2, 'Tomy', 10);
