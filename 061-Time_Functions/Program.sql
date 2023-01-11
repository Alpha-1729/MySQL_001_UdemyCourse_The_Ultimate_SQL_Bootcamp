-- Time Functions

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Getting Houe, Minute, Second from time.
SELECT BirthTime, HOUR(BirthTime), MINUTE(BirthTime), SECOND(BirthTime) FROM people;
SELECT BirthDateTime, HOUR(BirthDateTime) FROM people;

-- Getting the Time and Date from the DateTime.
SELECT BirthDateTime, DATE(BirthDateTime), TIME(BirthDateTime) FROM people;