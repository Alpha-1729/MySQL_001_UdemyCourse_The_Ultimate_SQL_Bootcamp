-- Working With Not Null

/*
>>>> NULL means there is not information in that column.
>>>>
>>>>
>>>>
*/

-- Insert into a table with age = NULL.
INSERT INTO cats (`name`)
VALUES ('Todd');

-- Insert NULL into all columns in a table.
INSERT INTO cats() VALUES();

-- Setting the NOT NULL property.
CREATE TABLE cats
(
    `name` VARCHAR(50) NOT NULL
    ,age INT NOT NULL
);

DESCRIBE cats;