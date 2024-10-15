CREATE TABLE Supermarket (Billno INT PRIMARY KEY,ItemName VARCHAR(255),Price DECIMAL(10, 2),CustomerName VARCHAR(255));

ALTER TABLE Supermarket ADD CustomerPhone VARCHAR(15);

INSERT INTO Supermarket (Billno, ItemName, Price, CustomerName, CustomerPhone) 
VALUES(1,'Milk',1.50,'Nimisha','1234567890'),(2,'Bread',2.00, 'Sreeshma', '2345678901'),
(3,'Egg',3.00,'Asla', '3456789012'),(4,'Butter', 4.00, 'Sneha', '456789013'),
(5,'Cheese',2.50,'Amaya', '5678901234'),(6,'Juice', 3.50, 'Megha', '6789012345'),(7, 'Coffee', 5.00, 'Aswathy', '7890123456');

-- Display Whole Table
SELECT * FROM Supermarket;

-- Display First 4 Records According to Price
SELECT * FROM Supermarket ORDER BY Price LIMIT 4;

-- Update Any Item Name
UPDATE Supermarket SET ItemName = 'Test Milk' WHERE Billno = 1; 

-- Delete Any Record
DELETE FROM Supermarket WHERE Billno = 4;  

-- Display Any 4 Columns
SELECT Billno, ItemName, Price, CustomerName FROM Supermarket;
SELECT * FROM Supermarket;


-- Insert additional records with duplicate customers
INSERT INTO Supermarket (Billno, ItemName, Price, CustomerName, CustomerPhone) 
VALUES(8, 'Yogurt', 2.00, 'Nimisha', '1234567890'),  (9, 'Chips', 1.75, 'Sreeshma', '2345678901'),(10, 'Pasta', 3.25, 'Amaya', '5678901234'); 

-- SQL Query Using GROUP BY and HAVING
-- find out which customers have purchased more than one item
SELECT CustomerName, COUNT(*) AS ItemCount FROM Supermarket GROUP BY CustomerName HAVING COUNT(*) > 1;

-- If you want to analyze the average price of items purchased by each customer and only show customers who spent an average of more than $3
SELECT CustomerName, AVG(Price) AS AvgPrice FROM Supermarket GROUP BY CustomerName HAVING AVG(Price) > 3.00;

-- Count of Items Purchased by Each Customer
SELECT CustomerName, COUNT(*) AS ItemCount FROM Supermarket GROUP BY CustomerName;

-- Total Price of Items Purchased by Each Customer (SUM)
SELECT CustomerName, SUM(Price) AS TotalSpent FROM Supermarket GROUP BY CustomerName;

-- Minimum Price of Items Purchased by Each Customer (MIN)
SELECT CustomerName, MIN(Price) AS MinPrice FROM Supermarket GROUP BY CustomerName;

-- Maximum Price of Items Purchased by Each Customer (MAX)
SELECT CustomerName, MAX(Price) AS MaxPrice FROM Supermarket GROUP BY CustomerName;

-- Average Price of Items Purchased by Each Customer (AVG)
SELECT CustomerName, AVG(Price) AS AvgPrice FROM Supermarket GROUP BY CustomerName;

-- Combined Example
SELECT 
    CustomerName, 
    -- Count of items purchased
    COUNT(*) AS ItemCount,          
	-- Total amount spent
    SUM(Price) AS TotalSpent,
    -- Average price of items
    AVG(Price) AS AvgPrice,         
    -- Minimum price of items
    MIN(Price) AS MinPrice,         
    -- Maximum price of items
    MAX(Price) AS MaxPrice          
FROM Supermarket 
GROUP BY CustomerName;

-- the average of distinct prices for each customer
SELECT CustomerName,AVG(DISTINCT Price) AS AvgDistinctPrice 
FROM Supermarket GROUP BY CustomerName;
