CREATE TABLE STUDENT_DETAILS (
studentid INT PRIMARY KEY,firstname VARCHAR(50),lastname VARCHAR(50),GPA DECIMAL(3, 2),enrollmentdate DATE,major VARCHAR(50));

INSERT INTO STUDENT_DETAILS (studentid, firstname, lastname, GPA, enrollmentdate, major) VALUES
(1, 'Nimisha', 'Davis', 3.75, '2022-01-15', 'Computer Science'),(2, 'Sreeshma', 'SR', 3.60, '2022-01-16', 'Mathematics'),
(3, 'Asla', 'AS', 3.85, '2022-01-17', 'Biology'),(4, 'Sneha', 'SN', 3.90, '2022-01-18', 'Physics'),
(5, 'Amaya', 'AM', 3.50, '2022-01-19', 'Mathematics'),(6, 'Megha', 'ME', 3.75, '2022-01-20', 'Computer Science'),
(7, 'Aswathy', 'AS', 3.80, '2022-01-21', 'Chemistry'),(8, 'Hannah', 'HA', 3.55, '2022-01-22', 'Biology'),
(9, 'Saara', 'SA', 3.90, '2022-01-23', 'Physics'),(10, 'Rose', 'RO', 3.60, '2022-01-24', 'Computer Science');

-- Fetch Firstnames from the STUDENT_DETAILS Table
SELECT firstname FROM STUDENT_DETAILS;

-- Fetch Unique Values of Major Subjects
SELECT DISTINCT major FROM STUDENT_DETAILS;

-- Determine the Highest GPA from the Table
SELECT MAX(GPA) AS HighestGPA FROM STUDENT_DETAILS;

-- Determine the Top 5 Highest GPAs
SELECT firstname, lastname, GPA FROM STUDENT_DETAILS 
ORDER BY GPA DESC LIMIT 5;

INSERT INTO STUDENT_DETAILS (studentid, firstname, lastname, GPA, enrollmentdate, major) VALUES
(11, 'Nisa', 'Davis', 3.75, '2022-01-15', 'Computer Science');

-- Fetch the List of Students with the Same GPA
SELECT firstname, lastname, GPA
FROM STUDENT_DETAILS
WHERE GPA = ( SELECT GPA FROM STUDENT_DETAILS GROUP BY GPA HAVING COUNT(*) > 1 LIMIT 1);

-- OR 

SELECT * from Student_details where gpa=3.75;


-- Fetch the no of Students with the Same GPA
SELECT GPA, COUNT(*) AS StudentCount FROM STUDENT_DETAILS
GROUP BY GPA HAVING COUNT(*) > 1;











