-- Cross Joins

/*
>>>>
>>>>
>>>>
>>>>
*/

-- Getting the order details placed by George.
SELECT customer_id FROM customers WHERE last_name = 'George';
SELECT * FROM orders WHERE customer_id = 1;

-- Using the sub query.
SELECT * FROM orders WHERE customer_id = (SELECT customer_id FROM customers WHERE last_name = 'George');

-- Using cross join.
-- Combine every row in one table with other table.
SELECT * FROM customers, orders;

