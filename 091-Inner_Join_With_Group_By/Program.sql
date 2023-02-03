-- Inner Join With Group By

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT customers.first_name, customers.last_name, SUM(orders.amount) AS total_spent FROM customers
INNER JOIN orders
	ON orders.customer_id = customers.customer_id
GROUP BY customers.first_name, customers.last_name;