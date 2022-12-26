-- Working With Auto Increment

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Setting the auto increment property.
CREATE TABLE cats
(
    cat_id INT AUTO_INCREMENT
    ,`name` VARCHAR(50) NOT NULL
    ,age INT NOT NULL
    ,PRIMARY KEY (cat_id)
);

-- See the column named Extra.
DESC cats;

INSERT INTO cats (`name`, age)
VALUES ('Boingo', 1);
