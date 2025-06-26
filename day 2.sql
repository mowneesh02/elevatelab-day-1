
CREATE DATABASE companyDB;


USE companyDB;


CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    age INT DEFAULT NULL,
    department VARCHAR(50) DEFAULT 'General'
);


INSERT INTO employees (name, age, department)
VALUES ('Arun', 30, 'HR');

INSERT INTO employees (name, age)
VALUES ('Meena', NULL); -- Missing age will be stored as NULL


UPDATE employees
SET department = 'Finance'
WHERE name = 'Arun'

DELETE FROM employees
WHERE age IS NULL;
