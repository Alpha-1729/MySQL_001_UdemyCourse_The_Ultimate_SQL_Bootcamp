-- First Value

/*
>>>> Return the value of expr from the first row of the window frame.
>>>>
>>>>
>>>>
*/

-- Getting the employee number with the highest paying employee in the column.
SELECT 
    emp_no
    ,department
    ,salary
    ,FIRST_VALUE(emp_no) OVER (ORDER BY salary DESC) AS HighestPayingEmployee
FROM employees;

-- Getting the employee number with the highest paying employee in the column in each department.
SELECT 
    emp_no
    ,department
    ,salary
    ,FIRST_VALUE(emp_no) OVER (PARTITION BY department ORDER BY salary DESC) AS HighestPayingEmployeeDepartment
    ,FIRST_VALUE(emp_no) OVER (ORDER BY salary DESC) AS HighestPayingEmployee
FROM employees;

-- Getting the employee number with the lowest paying employee in the column in each department.
SELECT 
    emp_no
    ,department
    ,salary
    ,LAST_VALUE(emp_no) OVER (PARTITION BY department ORDER BY salary DESC) AS LowestPayingEmployeeDepartment
    ,FIRST_VALUE(emp_no) OVER (ORDER BY salary DESC) AS HighestPayingEmployee
FROM employees;

-- Getting the employee number with the Second highest paying employee in the column in each department.
-- For highest paying employees in department wise will be null.
SELECT 
    emp_no
    ,department
    ,salary
    ,NTH_VALUE(emp_no, 2) OVER (PARTITION BY department ORDER BY salary DESC) AS SecondHighestPayingEmployeeDepartment
    ,FIRST_VALUE(emp_no) OVER (ORDER BY salary DESC) AS LowestPayingEmployee
FROM employees;