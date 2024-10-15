CREATE TABLE Sale (
    SalesID INT PRIMARY KEY,ProductID INT,QuantitySold INT,SaleDate DATE,TotalPrice DECIMAL(10, 2));

INSERT INTO Sale (SalesID, ProductID, QuantitySold, SaleDate, TotalPrice) VALUES
(1, 101, 5, '2024-01-01', 50.00),(2, 102, 3, '2024-01-01', 45.00),(3, 101, 2, '2024-01-02', 20.00),
(4, 103, 1, '2024-01-02', 15.00),(5, 101, 4, '2024-01-03', 40.00),(6, 102, 6, '2024-01-03', 90.00),
(7, 103, 2, '2024-01-04', 30.00);

SELECT * FROM Sale;
SELECT SalesID, TotalPrice FROM Sale;

-- Find the lowest sale based on TotalPrice
SELECT * FROM Sale ORDER BY TotalPrice ASC LIMIT 1;

-- Find the top 3 sales based on TotalPrice
SELECT * FROM Sale ORDER BY TotalPrice DESC LIMIT 3;

-- find the total quantity sold for each product
SELECT ProductID, SUM(QuantitySold) AS Total_Quantity_Sold FROM Sale GROUP BY ProductID;

-- Find the top 1 products based on total quantity sold
SELECT ProductID, SUM(QuantitySold) AS Total_Quantity_Sold FROM Sale GROUP BY ProductID ORDER BY Total_Quantity_Sold DESC LIMIT 1;
