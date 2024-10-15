
-- Create a table tourist with column:  Id Name Place Dateofarrival Phoneno Emailid Budget 
CREATE TABLE tourist (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Place VARCHAR(100),
    Dateofarrival DATE,
    Phoneno VARCHAR(15),
    Emailid VARCHAR(100),
    Budget DECIMAL(10, 2)
);
-- Change column name to dateofarrival to dateofreturn 
ALTER TABLE tourist CHANGE Dateofarrival Dateofreturn DATE;

-- add new column : noofdays 
ALTER TABLE tourist ADD noofdays INT;

-- insert 8 records 
INSERT INTO tourist (Id, Name, Place, Dateofreturn, Phoneno, Emailid, Budget, noofdays) VALUES
(1, 'Leonardo', 'New York', '2024-10-10', '1234567890', 'leo@gmail.com', 1200.00, 5),
(2, 'Scarlett', 'Los Angeles', '2024-10-15', '1234567891', 'scarlett@gmail.com', 800.00, 7),
(3, 'Brad', 'New York', '2024-10-10', '1234567892', 'brad@gmail.com', 1500.00, 5),
(4, 'Meryl', 'Chicago', '2024-10-12', '1234567893', 'meryl@gmail.com', 700.00, 3),
(5, 'Tom', 'Los Angeles', '2024-10-20', '1234567894', 'tom@gmail.com', 900.00, 8),
(6, 'Julia', 'Chicago', '2024-10-11', '1234567895', 'julia@gmail.com', 600.00, 4),
(7, 'Denzel', 'Miami', '2024-10-09', '1234567896', 'denzel@gmail.com', 2000.00, 2),
(8, 'Angelina', 'Miami', '2024-10-10', '1234567897', 'angelina@gmail.com', 500.00, 6);


-- display details of tourist who are returning on 10/10/2024 
SELECT * FROM tourist WHERE Dateofreturn = '2024-10-10';

-- display top 5 tourist accoring to their budget 
SELECT * FROM tourist ORDER BY Budget DESC LIMIT 5;

-- display name,place,and budget of the tourists who came from same place 
SELECT Name, Place, Budget FROM tourist WHERE Place="New York";

-- display the count of the records in table 
SELECT COUNT(*) AS TotalRecords FROM tourist;

-- display the unique places sort the table according to the budget 
SELECT DISTINCT Place FROM tourist ORDER BY Budget;
SELECT Place FROM tourist GROUP BY Place ORDER BY MIN(Budget);

-- display the tourist who spends the most
SELECT * FROM tourist ORDER BY Budget DESC LIMIT 1;




SELECT * from tourist where name like 'j%';


















