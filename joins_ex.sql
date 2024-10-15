
CREATE TABLE orders (orderid INT PRIMARY KEY,customerid INT,orderdate DATE);

CREATE TABLE customer (customerid INT PRIMARY KEY,customername VARCHAR(255),contactname VARCHAR(255),country VARCHAR(100));

INSERT INTO orders (orderid, customerid, orderdate) 
VALUES (1, 101, '2024-10-01'),(2, 102, '2024-10-02'),(3, 103, '2024-10-03'),
(4, 105, '2026-10-03');

INSERT INTO customer (customerid, customername, contactname, country) VALUES 
(101, 'Nimisha', 'contact1', 'USA'),(102, 'Asla', 'contact2', 'Canada'),
(103, 'Sree', 'contact3', 'UK'),(104, 'Megha', 'contact4', 'India');

-- inner join 
SELECT orders.orderid, customer.customername, orders.orderdate 
FROM orders 
INNER JOIN customer ON orders.customerid = customer.customerid;

-- Left Join (or Left Outer Join)
SELECT orders.orderid, customer.customername, orders.orderdate 
FROM orders 
LEFT JOIN customer ON orders.customerid = customer.customerid;

-- Right Join (or Right Outer Join)
SELECT orders.orderid, customer.customername, orders.orderdate 
FROM orders 
RIGHT JOIN customer ON orders.customerid = customer.customerid;

-- Full Join (or Full Outer Join)
SELECT orders.orderid, customer.customername, orders.orderdate 
FROM orders 
LEFT JOIN customer ON orders.customerid = customer.customerid
UNION
SELECT orders.orderid, customer.customername, orders.orderdate 
FROM orders 
RIGHT JOIN customer ON orders.customerid = customer.customerid;

-- Cross Join
SELECT orders.orderid, customer.customername, orders.orderdate 
FROM orders 
CROSS JOIN customer;


