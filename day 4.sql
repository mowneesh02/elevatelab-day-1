create database Orders;
use Orders;
CREATE TABLE Orders (
    OrderID INT,
    CustomerName TEXT,
    Region TEXT,
    OrderAmount DECIMAL(10,2)
);

INSERT INTO Orders (OrderID, CustomerName, Region, OrderAmount) VALUES
(1, 'Alice', 'North', 250.00),
(2, 'Bob', 'South', 300.00),
(3, 'Charlie', 'North', 150.00),
(4, 'Diana', 'East', 400.00),
(5, 'Eve', 'South', 500.00);
SELECT SUM(OrderAmount) AS TotalSales FROM Orders;
SELECT AVG(OrderAmount) AS AverageOrder FROM Orders;
SELECT COUNT(*) AS NumberOfOrders FROM Orders;
SELECT Region, SUM(OrderAmount) AS TotalSales
FROM Orders
GROUP BY Region;

