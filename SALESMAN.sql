CREATE TABLE SALESMAN (
    salesman_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(100),
    commission DECIMAL(10, 2)
);

INSERT INTO SALESMAN (salesman_id, name, country, commission) VALUES 
(1, 'Nimisha', 'India', 600.00),(2, 'Asla', 'India', 450.00),
(3, 'Sree', 'India', 700.00),(4, 'Sneha', 'India', 550.00),
(5, 'Megha', 'India', 300.00),(6, 'Amaya', 'India', 800.00);

INSERT INTO SALESMAN (salesman_id, name, country, commission) VALUES 
(12, 'Nimisha', 'India', 600.00),
(7, 'Asla', 'USA', 450.00),
(8, 'Sree', 'UK', 700.00),
(9, 'Arathy', 'Canada', 550.00),
(10, 'Megha', 'Australia', 300.00),
(11, 'Amaya', 'Germany', 800.00);


SELECT * from SALESMAN ORDER BY salesman_id;

SELECT DISTINCT name FROM SALESMAN;

SELECT * FROM SALESMAN WHERE country = 'India';

SELECT * FROM SALESMAN WHERE commission > 600;



