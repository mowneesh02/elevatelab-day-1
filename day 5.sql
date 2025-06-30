create database customer;
use customer;
CREATE TABLE customers (
    CustomerID INTEGER PRIMARY KEY,
    CustomerName TEXT,
    Country TEXT
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    OrderDate TEXT,
    CustomerID INTEGER,
    Amount REAL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- Customers
INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'Alice', 'India'),
(2, 'Bob', 'USA'),
(3, 'Charlie', 'UK'),
(4, 'David', 'Canada');

-- Orders
INSERT INTO Orders (OrderID, OrderDate, CustomerID, Amount) VALUES
(101, '2025-06-01', 1, 500.00),
(102, '2025-06-03', 2, 300.00),
(103, '2025-06-05', 1, 200.00),
(104, '2025-06-10', 3, 700.00);
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
-- MySQL only
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
-- Simulated FULL OUTER JOIN
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.CustomerName, Orders.OrderID, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
