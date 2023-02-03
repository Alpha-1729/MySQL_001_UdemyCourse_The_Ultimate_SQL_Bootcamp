-- Right Join

/*
>>>> Select everything from B, along with any matching records in A.
>>>>
>>>>
>>>>
*/

SELECT first_name, last_name, order_date, amount FROM orders
RIGHT JOIN customers
	ON orders.customer_id = customers.customer_id
GROUP BY first_name, last_name;
