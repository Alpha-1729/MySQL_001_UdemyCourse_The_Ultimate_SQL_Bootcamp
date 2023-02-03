-- Left Join

/*
>>>> Select everything from A, along with any matching records in B.
>>>>
>>>>
>>>>
*/

-- If there is no matching records in the second table, it will be populated with NULL.
SELECT first_name, last_name, order_date, amount FROM customers
LEFT JOIN orders
	ON orders.customer_id = customers.customer_id;

-- Getting the information of users who doesn't place an order.
SELECT first_name, last_name, order_id, order_date, amount FROM customers
LEFT JOIN orders
	ON orders.customer_id = customers.customer_id
WHERE order_id IS NULL;