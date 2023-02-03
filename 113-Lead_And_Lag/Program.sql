-- Lead And Lag

/*
>>>>
>>>>
>>>>
>>>>
*/

-- LAG
-- Print the value of salary in the next row in the current column.
SELECT 
    emp_no
    ,department
    ,salary
    ,LAG(salary) OVER (ORDER BY salary DESC) AS SalaryLag
FROM employees ORDER BY salary ASC;

-- Print the value of salary after 2 row in the current column.
SELECT 
    emp_no
    ,department
    ,salary
    ,LAG(salary, 2) OVER (ORDER BY salary DESC) AS SalaryLag
FROM employees ORDER BY salary ASC;

-- LEAD
-- Print the value of salary in the previous row in the current column.
SELECT 
    emp_no
    ,department
    ,salary
    ,LEAD(salary) OVER (ORDER BY salary DESC) AS SalaryLag
FROM employees ORDER BY salary ASC;

-- Print the value of salary before 2 row in the current column.
SELECT 
    emp_no
    ,department
    ,salary
    ,LEAD(salary, 2) OVER (ORDER BY salary DESC) AS SalaryLag
FROM employees ORDER BY salary ASC;

-- Finding the difference between the current salary and previous salary.
SELECT 
    emp_no
    ,department
    ,salary
    ,salary - LAG(salary) OVER (ORDER BY salary DESC) AS SalaryDifference
FROM employees;

-- Finding the difference between the current salary and next salary.
SELECT 
    emp_no
    ,department
    ,salary
    ,salary - LEAD(salary) OVER (ORDER BY salary DESC) AS SalaryDifference
FROM employees;
