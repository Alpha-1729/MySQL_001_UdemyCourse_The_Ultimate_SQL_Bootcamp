-- Creating Tables

/*
>>>>
>>>>
>>>>
>>>>
*/

CREATE DATABASE pet_shop;
USE pet_shop; 

-- Creating tables.
CREATE TABLE cats
(
    `name` VARCHAR(100)
    ,age INT
);

CREATE TABLE dogs
(
    `name` VARCHAR(50)
    ,breed VARCHAR(50)
    ,age INT
);