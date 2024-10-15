use test_sql;
CREATE TABLE person (
    id INT,
    name VARCHAR(30),
    lastname VARCHAR(30),
    dob VARCHAR(30),
    address VARCHAR(30)
);

-- Change column name to firstname
ALTER TABLE person CHANGE name firstname VARCHAR(30);

-- Change the datatype of dob to decimal
ALTER TABLE person MODIFY dob DECIMAL(10, 2);

-- Change column dob to age
ALTER TABLE person CHANGE dob age INT;

-- Change the tablename to personal details
ALTER TABLE person RENAME TO personal_details;

-- Insert 8 records to table
INSERT INTO personal_details (id, firstname, lastname, age, address) VALUES
(1, 'Nimi', 'sha', 25, 'abc'),
(2, 'as', 'la', 30, 'def'),
(3, 'sree', 'shma', 22, 'ghi'),
(4, 'me', 'gha', 28, 'jkl'),
(5, 'ama', 'ya', 35, 'mno'),
(6, 'sne', 'ha', 27, 'pqr'),
(7, 'as', 'wathy', 32, 'stu'),
(8, 'Fiona', 'danny', 24, 'vwx');

-- Change the name of any one record
SET SQL_SAFE_UPDATES = 0;
UPDATE personal_details SET firstname="test" WHERE ID=2;

-- Delete address column from the table
ALTER TABLE personal_details DROP COLUMN address;

-- Display all the details of the table
SELECT * FROM personal_details;

-- Display the sorted table accoring to age
SELECT * FROM personal_details ORDER BY age;
