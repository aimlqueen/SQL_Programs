use tata;
-- Create the employee table
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    employee_address VARCHAR(255),
    employee_salary int,
    employee_age INT,
    employee_phone_number VARCHAR(15)
);

-- Change the column name from employee_age to DOB
ALTER TABLE employee CHANGE employee_age DOB DATE;

-- Change the table name to Tech_Employee
ALTER TABLE employee RENAME TO Tech_Employee;

-- Add the employee_division column
ALTER TABLE Tech_Employee ADD employee_division VARCHAR(50);

-- Change the length of the employee_name column
ALTER TABLE Tech_Employee MODIFY employee_name VARCHAR(150);

-- Insert 5 records into the table with salaries included
INSERT INTO Tech_Employee (employee_id, employee_name, employee_address, DOB, employee_phone_number, employee_division, employee_salary) 
VALUES
(1, 'Nimisha', 'Calicut', '1990-01-01', '123-456-7890', 'Engineering', 16000),
(2, 'Sreeshma', 'Thrissur', '1985-05-12', '234-567-8901', 'Marketing', 14000),
(3, 'Asla', 'Mumbai', '1992-08-30', '345-678-9012', 'Sales', 18000),
(4, 'Sneha', 'Dubai', '1988-03-20', '456-789-0123', 'HR', 12000),
(5, 'Amaya', 'TVM', '1995-11-22', '567-890-1234', 'IT', 20000);

-- Display the whole table
SELECT * FROM Tech_Employee;

-- Display specific columns (name and division)
SELECT employee_name, employee_salary, employee_division FROM Tech_Employee;

-- Drop the DOB column
ALTER TABLE Tech_Employee DROP COLUMN DOB;

-- Display the table after modifications
SELECT * FROM Tech_Employee;

-- display employees with salary above 15000 --
SELECT employee_name, employee_salary, employee_division FROM Tech_Employee WHERE employee_salary > 15000;

