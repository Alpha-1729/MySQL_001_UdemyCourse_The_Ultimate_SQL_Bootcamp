-- Char Vs Varchar

/*
>>>> CHAR
        The length of the CHAR column is fixed to the length that you declare when you create the table.
        The length can be any value from 0 to 255.
        When CHAR values are stored, they are right-padded with spaces to the specified length.
        When CHAR values are retrieved, trailing spaces are removed, unless the PAD_TO_FULL_LENGTH SQL mode is enabled.
>>>> CHAR VS VARCHAR
        Please seee the screenshot attached.
>>>> CHAR is useful when you similar sized data like city shortname.
        Eg: City shortname like CA, NY.
            Y/N
            ZipCodes like 59954, 94924
>>>> CHAR is faster for fixed length text.
>>>> If the length of the data is more than the expected length, you can't insert the data in the case of CHAR and VARCHAR.

*/
