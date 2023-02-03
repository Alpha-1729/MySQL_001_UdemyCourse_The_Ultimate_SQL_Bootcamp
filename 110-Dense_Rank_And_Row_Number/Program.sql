-- Dense Rank And Row Number

/*
>>>> Row Number
        Row Number ranges from 1 to the number of partition rows.
>>>> Dense Rank.
        Same like the Rank().
        If the a tie is encounter the next rank() will be consecutive.
        Eg: Salary  Dense_Rank
             7000   1
             7000   1
             8000   2
        
>>>>
>>>>
*/

SELECT  
    emp_no
    ,department
    ,salary
    ,ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_row_number
    ,RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
    ,DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_salary_dense_rank
FROM employees ORDER BY department;