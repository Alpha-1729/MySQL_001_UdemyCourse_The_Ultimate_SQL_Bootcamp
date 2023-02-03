-- Rank

/*
>>>> If any column have the same value while considering the rank, they will get the same rank.
        Eg: Salary Rank
            7000   1
            7000   1
            8000   3
>>>>
>>>>
>>>>
*/


SELECT  
    emp_no
    ,department
    ,salary
    ,RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank
    ,RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM employees ORDER BY department;
