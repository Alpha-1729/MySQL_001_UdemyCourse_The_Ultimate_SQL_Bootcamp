-- Adding Default Values

/*
>>>> While using NOT NULL and Default Values.
        If we set only DEFAULT:
            If we didn't pass a value, default value will be set.
        If we set only DEFAULT:
            We can manually insert NULL into the column.
        If we set NOT NULL and DEFAULT:
            We cannot manually insert NULL into the column.
            If we didn't pass any values to the column, default value will be set.
        
>>>>
>>>>
>>>>
*/

CREATE TABLE cats
(
    `name` VARCHAR(50) DEFAULT 'unnamed'
    ,age INT DEFAULT 99
);

DESC cats;