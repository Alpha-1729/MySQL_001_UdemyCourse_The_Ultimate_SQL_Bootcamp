-- Check Constraints

/*
>>>>
>>>>
>>>>
>>>>
*/

CREATE TABLE users
(
	username VARCHAR(15) NOT NULL		
	,age INT CHECK (age > 0)
);

INSERT INTO users (username, age)
VALUES ('tim', 13);

INSERT INTO users (username, age)  -- It will show check constraint error.
VALUES ('tim', 0);

CREATE TABLE palindrome
(
	word VARCHAR(20) CHECK(REVERSE(word) = word)
);

INSERT INTO palindrome (word)
VALUES ('racecar');

INSERT INTO palindrome (word)
VALUES ('mummy');