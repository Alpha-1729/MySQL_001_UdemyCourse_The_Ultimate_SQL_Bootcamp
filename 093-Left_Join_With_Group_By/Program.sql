-- Left Join With Group By

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT first_name, last_name, IFNULL(SUM(amount), 0) AS total_spent FROM customers
LEFT JOIN orders
	ON orders.customer_id = customers.customer_id
GROUP BY first_name, last_name;