CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,CustomerName VARCHAR(50),LastName VARCHAR(58),Country VARCHAR(50),Age INT,Phone VARCHAR(15));

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone) VALUES
(1, 'Nimisha', 'Davis', 'India', 23, '356233'),(2, 'Asla', 'Aslamiya', 'Dubai', 21, '6561331'),
(3, 'Sree', 'shma', 'Canada', 24, '562220'),(4, 'Sne', 'ha', 'Austria', 21, '465230'),(5, 'meg', 'ha', 'Spain', 22, '122334');

SELECT * FROM Customer;
SELECT CustomerID,CustomerName,Country FROM Customer;
SELECT * FROM Customer ORDER BY Age;
SELECT * FROM Customer ORDER BY Age LIMIT 4;
SELECT * FROM Customer ORDER BY Age DESC LIMIT 4;

INSERT INTO Customer (CustomerID, CustomerName, LastName, Country, Age, Phone) VALUES(6, 'Nimisha', 'K', 'Kerala', 33, '352233');
SELECT * FROM Customer;

-- This query retrieves all unique (distinct) customer names from the Customer table. It will return a list without any duplicates. -- 
SELECT distinct CustomerName from Customer;

-- This query counts the number of unique customer names in the Customer table. --
-- The result will be a single integer representing how many distinct customer names exist.--
SELECT COUNT(distinct CustomerName) from Customer;

-- SELECT CustomerName: This selects the customer names from the Customer table. --
-- AVG(Age) AS Average_Age: This calculates the average age of customers, labeling the result as Average_Age. --
-- GROUP BY CustomerName: This groups the results by customer name, allowing the average age to be calculated for each individual customer.--
SELECT CustomerName,AVG(Age) as Average_salary FROM Customer GROUP BY CustomerName;

SELECT * FROM Customer;

-- Update example
SET SQL_SAFE_UPDATES=0;
UPDATE Customer SET CustomerName = "SHAREEF" where age=33;
SELECT * FROM Customer;
UPDATE Customer SET CustomerName = "Test",  Country="UK" where CustomerID=3;
SELECT * FROM Customer;
UPDATE Customer SET CustomerName = "SHAREEF" ;
SELECT * FROM Customer;

DELETE FROM Customer where CustomerID=6;
SELECT * FROM Customer;
DELETE FROM Customer;
SELECT * FROM Customer;

DROP TABLE Customer;











