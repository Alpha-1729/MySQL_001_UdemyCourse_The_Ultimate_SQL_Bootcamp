-- On Delete Cascade

/*
>>>>
>>>>
>>>>
>>>>
*/

-- How to delete the entries in the orders table, if customer entry is deleted.

CREATE TABLE customers
(
	customer_id INT PRIMARY KEY AUTO_INCREMENT
	,first_name VARCHAR(50)
	,last_name VARCHAR(50)
	,email VARCHAR(50)
);

CREATE TABLE orders
(
	order_id INT PRIMARY KEY AUTO_INCREMENT
	,order_date DATE
	,amount DECIMAL(8, 2)
	,customer_id INT
	,FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE
);

DELETE FROM customers WHERE last_name = 'George'; -- All the entries in the orders table will be also deleted.