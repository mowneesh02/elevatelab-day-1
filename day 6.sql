create database departments;
use departments;
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
CREATE TABLE Projects (
    project_id INTEGER PRIMARY KEY,
    project_name TEXT,
    emp_id INTEGER,
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

INSERT INTO Departments VALUES (1, 'HR'), (2, 'Engineering'), (3, 'Marketing');

INSERT INTO Employees VALUES
(101, 'Alice', 60000, 2),
(102, 'Bob', 75000, 2),
(103, 'Charlie', 50000, 1),
(104, 'David', 80000, 3),
(105, 'Eva', 45000, 1),
(106, 'Frank', 90000, 2);
INSERT INTO Projects VALUES
(1, 'Website Revamp', 101),
(2, 'Product Launch', 104),
(3, 'Database Upgrade', 106),
(4, 'HR Policy Review', 103);
SELECT name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);
SELECT name, salary, dept_id,
    (SELECT AVG(salary)
     FROM Employees e2
     WHERE e2.dept_id = e1.dept_id) AS avg_dept_salary
FROM Employees e1;
SELECT dept_id, avg_salary
FROM (
    SELECT dept_id, COUNT(*) AS emp_count, AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY dept_id
) AS dept_summary
WHERE emp_count > 1;
SELECT name, salary
FROM Employees
WHERE salary IN (
    SELECT salary
    FROM Employees
    ORDER BY salary DESC
    LIMIT 2
);
SELECT name
FROM Employees
WHERE dept_id = (
    SELECT dept_id
    FROM Employees
    WHERE name = 'Bob'
);

