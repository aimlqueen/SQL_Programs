CREATE TABLE employees (
    empid INT PRIMARY KEY,
    empname VARCHAR(100),
    jobname VARCHAR(100),
    managerid INT,
    hiredate DATE,
    salary DECIMAL(10, 2),
    commission DECIMAL(10, 2),
    deptid INT
);

INSERT INTO employees (empid, empname, jobname, managerid, hiredate, salary, commission, deptid) VALUES
(1, 'Nimisha ', 'Software Engineer', 3, '2020-11-05', 70000.00, 5000.00, 1),
(2, 'Sree ', 'Project Manager', 3, '2021-05-20', 90000.00, 10000.00, 1),
(3, 'Asla ', 'Team Lead', 1, '2021-05-20', 80000.00, 8000.00, 2),
(4, 'Megha ', 'Software Engineer', 3, '2022-02-25', 75000.00, 6000.00, 1),
(5, 'Amaya ', 'Data Analyst', 2, '2021-03-30', 65000.00, 3000.00, 3),
(6, 'Sneha ', 'Designer', 2, '2021-07-22', 70000.00, 4000.00, 3),
(7, 'Aswathy ', 'Database Administrator', 3, '2020-11-05', 72000.00, 4500.00, 2);


SELECT * from employees;

-- Query to Find Salary of All Employees
SELECT empname, salary FROM employees;

-- Query to Find Unique Designations of Employees
SELECT DISTINCT jobname FROM employees;

-- Query to List Employees' Names and Increase Their Salary by 15%
SELECT empname, salary * 1.15 AS increased_salary FROM employees;

-- Query to List Employees' Names and Job Names
SELECT empname, jobname FROM employees;

-- Query to Find Employees with the Same Hire Date
SELECT empname, hiredate
FROM employees
WHERE hiredate = '2020-11-05';   

SELECT empname, hiredate
FROM employees
WHERE hiredate IN (
    SELECT hiredate
    FROM employees
    GROUP BY hiredate
    HAVING COUNT(*) > 1
);

SELECT hiredate, GROUP_CONCAT(empname) AS employees FROM employees GROUP BY hiredate HAVING COUNT(*) > 1;


