-- Sql Mode Basics

/*
>>>> Server SQL modes documentation.
        https://dev.mysql.com/doc/refman/5.7/en/sql-mode.html
>>>>
>>>>
>>>>
*/

-- Getting the current SQL modes.
-- Getting the global SQL mode.
SELECT @@GLOBAL.SQL_MODE;

-- Getting the session SQL mode.
SELECT @@SESSION.SQL_MODE;

-- To update the session SQL modes.
-- Remove DivisionByZeroMode.
-- Get the SQL_MODE from SESSION.
-- Remove thr DivisionByZero mode from the SESSION and add in the below query.
SET SESSION SQL_MODE = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION';

-- To update the global SQL mode.
SET GLOBAL SQL_MODE = 'modes separated by comma.'

