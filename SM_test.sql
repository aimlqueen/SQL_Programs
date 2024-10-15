
CREATE TABLE SM (
    Bill_No INT,
    Item VARCHAR(20),
    Price FLOAT,
    Customer_Name VARCHAR(50),
    Customer_Phoneno INT  
);

-- Insert records
INSERT INTO SM (Bill_No, Item, Price, Customer_Name, Customer_Phoneno)
VALUES
(11, 'SOAP', 120, 'ANU', 12345),
(12, 'SHAMPOO', 230, 'ABHI', 23456),
(13, 'BUCKET', 420, 'VIDYA', 34567),
(14, 'DETERGENT', 145, 'AKHILA', 45678),
(15, 'MAGGI', 45, 'ANAY', 56789),
(16, 'KNIFE', 20, 'NIMMI', 67890),
(17, 'BAG', 678, 'LIJI', 40567);

-- Update an item name
SET SQL_SAFE_UPDATES=0;   
UPDATE SM SET Item = 'Ink' WHERE Bill_No = 13;

-- Delete a record
DELETE FROM SM WHERE Bill_No = 15;

-- Display all records
SELECT * FROM SM;

-- Display first 4 records according to price
SELECT * FROM SM ORDER BY Price LIMIT 4;
