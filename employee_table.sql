-- Create table-- 
CREATE TABLE employee (emp_id INT,name VARCHAR(50),salary int,address VARCHAR(100));

-- insert value-- 
INSERT INTO employee (emp_id, name, salary, address) VALUES
(1, 'Nimisha', 60000, 'clt'),(2, 'Sreeshma', 55000, 'Kottakkal'),(3, 'Asla', 70000, 'Mlpum');

-- Display values-- 
SELECT * FROM employee;

-- Updae values-- 
UPDATE employee SET salary = 65000 WHERE emp_id = 1;
SELECT * FROM employee;

-- alter table-- 
ALTER TABLE employee ADD email VARCHAR(100);
ALTER TABLE employee MODIFY email VARCHAR(150);
ALTER TABLE employee CHANGE name full_name VARCHAR(50);
SELECT * FROM employee;

