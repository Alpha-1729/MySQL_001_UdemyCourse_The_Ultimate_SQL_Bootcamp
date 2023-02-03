-- Order By With Windows

/*
>>>> Use ORDER BY inside of the OVER() clause to re-order rows within each window.
>>>>
>>>>
>>>>
*/

-- Rolling dept salary will be the addition of each salary in the previous salary row.
SELECT  
    emp_no
    ,department
    ,salary
    ,SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_dept_salary
    ,SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
FROM employees;


SELECT  
    emp_no
    ,department
    ,salary
    ,MIN(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_dept_salary
FROM employees;