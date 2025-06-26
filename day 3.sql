CREATE DATABASE customer_data;
USE customer_data;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    total_spent DECIMAL(10, 2),
    stock_quantity INT
);
INSERT INTO customers (customer_id, first_name, last_name, city, total_spent, stock_quantity) VALUES
(1, 'Arjun', 'Kumar', 'Chennai', 6500.00, 25),
(2, 'Anita', 'Raman', 'Mumbai', 3200.00, 8),
(3, 'Bhavna', 'Iyer', 'Chennai', 10500.00, 5),
(4, 'Ashok', 'Kannan', 'Delhi', 4800.00, 12),
(5, 'Amar', 'Rao', 'Chennai', 7500.00, 2),
(6, 'Rani', 'Seth', 'Hyderabad', 2900.00, 15),
(7, 'Ayesha', 'Khan', 'Chennai', 9600.00, 6),
(8, 'Manoj', 'Varma', 'Bangalore', 3400.00, 9),
(9, 'Anil', 'Sundar', 'Chennai', 5300.00, 3),
(10, 'Deepa', 'Mohan', 'Chennai', 4100.00, 4);
SELECT * 
FROM customers;

SELECT customer_id, first_name, last_name, city 
FROM customers;

SELECT customer_id, first_name, last_name, city, total_spent
FROM customers
WHERE city = 'Chennai'
  AND total_spent BETWEEN 5000 AND 10000
  AND first_name LIKE 'A%'
  OR last_name LIKE '%an';

SELECT customer_id, first_name, last_name, total_spent
FROM customers
WHERE total_spent > 3000
ORDER BY total_spent DESC
LIMIT 5;
