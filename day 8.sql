CREATE DATABASE Employees;
Use Employees;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10, 2),
    dept_id INT
);

INSERT INTO Employees VALUES
(1, 'Alice', 60000, 10),
(2, 'Bob', 75000, 20),
(3, 'Charlie', 50000, 10),
(4, 'David', 90000, 20),
(5, 'Eva', 45000, 10);



CREATE PROCEDURE GetEmployeesByDept(IN input_dept INT)
BEGIN
    SELECT name, salary
    FROM Employees
    WHERE dept_id = input_dept;
END //

DELIMITER ;

-- Step 5: Create Function
-- Objective: Calculate 10% bonus on salary
DELIMITER //

CREATE FUNCTION GetBonus(salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN salary * 0.10;
END //

DELIMITER ;

-- Step 6: Usage Examples

-- Call Stored Procedure
CALL GetEmployeesByDept(10);

-- Use Function in SELECT
SELECT name, salary, GetBonus(salary) AS bonus
FROM Employees;
