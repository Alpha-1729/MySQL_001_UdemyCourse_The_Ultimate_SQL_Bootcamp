-- Using Over

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Add the average solary value to all the rows in the select.
SELECT AVG(salary) OVER () FROM employees;

-- Select some columns.
SELECT emp_no, department, salary, AVG(salary) OVER() FROM employees;

SELECT emp_no, department, salary, MIN(salary) OVER(), MAX(salary) OVER() FROM employees;

SELECT emp_no, department, salary, MIN(salary), MAX(salary) FROM employees;