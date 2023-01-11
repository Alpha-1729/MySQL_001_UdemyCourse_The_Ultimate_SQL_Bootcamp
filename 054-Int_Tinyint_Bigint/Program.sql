-- Int Tinyint Bigint

/*
>>>> Reference:
        https://dev.mysql.com/doc/refman/8.0/en/integer-types.html
>>>> If we insert a decimal value into a INT column, the data will be rounded to neared INT.
>>>>
>>>>
*/

-- Only store positive values.
CREATE TABLE parent
(
    Children TINYINT UNSIGNED
);