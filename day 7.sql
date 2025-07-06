create database Employees;
use Departments;

CREATE TABLE Departments (
    dept_id INTEGER PRIMARY KEY,
    dept_name TEXT
);

CREATE TABLE Employees (
    emp_id INTEGER PRIMARY KEY,
    name TEXT,
    salary INTEGER,
    dept_id INTEGER,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
INSERT INTO Departments VALUES (1, 'HR'), (2, 'Engineering'), (3, 'Marketing');

INSERT INTO Employees VALUES
(101, 'Alice', 60000, 2),
(102, 'Bob', 75000, 2),
(103, 'Charlie', 50000, 1),
(104, 'David', 80000, 3),
(105, 'Eva', 45000, 1);
CREATE VIEW HighEarners AS
SELECT name, salary
FROM Employees
WHERE salary > 60000;
SELECT * FROM HighEarners;
CREATE VIEW EmployeeDetails AS
SELECT e.emp_id, e.name, e.salary, d.dept_name
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;
SELECT * FROM EmployeeDetails;
CREATE VIEW AvgSalaryByDept AS
SELECT dept_id, AVG(salary) AS avg_salary
FROM Employees
GROUP BY dept_id;
SELECT * FROM AvgSalaryByDept;
CREATE VIEW EmployeeNamesOnly AS
SELECT name FROM Employees;
SELECT * FROM EmployeeNamesOnly;
