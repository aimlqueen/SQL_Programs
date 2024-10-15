-- Step 1: Create the Sales table --
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Quantity INT,
    SaleDate DATE,
    Price DECIMAL(10, 2)
);

-- Step 2: Insert sample data into the Sales table -- 
INSERT INTO Sales (SaleID, ProductName, Quantity, SaleDate, Price) VALUES
(1, 'Widget', 5, '2024-01-01', 10.00),
(2, 'Gadget', 3, '2024-01-01', 15.00),
(3, 'Widget', 2, '2024-01-02', 10.00),
(4, 'Gadget', 1, '2024-01-02', 15.00),
(5, 'Widget', 4, '2024-01-03', 10.00);

-- Step 3: Query to find the total quantity sold for each product --
SELECT ProductName, SUM(Quantity) AS Total_Quantity
FROM Sales
GROUP BY ProductName;
