-- Ntile

/*
>>>> Divides a partition into N groups(bucket) assigns each row in the partitions its bucket number.
>>>>
>>>>
>>>>
*/


SELECT 
    emp_no
    ,department
    ,salary
    ,NTILE(4) OVER (ORDER BY salary DESC) AS salary_quartile
FROM employees;