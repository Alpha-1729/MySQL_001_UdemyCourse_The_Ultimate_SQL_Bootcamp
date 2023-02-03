-- Inner Join

/*
>>>>
>>>>
>>>>
>>>>
*/

SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders
	ON customers.customer_id = orders.customer_id;