CREATE TABLE student_tech (student_id INT PRIMARY KEY,student_name VARCHAR(100),student_number VARCHAR(15),course VARCHAR(100),course_fee int);

ALTER TABLE student_tech ADD admission_date DATE;
ALTER TABLE student_tech RENAME TO student_profile;
ALTER TABLE student_profile CHANGE course_fee fee int;
ALTER TABLE student_profile MODIFY fee FLOAT;
ALTER TABLE student_profile DROP COLUMN student_number;

SELECT * FROM student_profile;

INSERT INTO student_profile (student_id, student_name, course, fee, admission_date) VALUES
(1, 'Nimisha', 'Computer Science', 12000.50, '2023-01-15'),
(2, 'Sreeshma', 'Information Technology', 15000.00, '2023-02-20'),
(3, 'Asla', 'Computer Science', 9500.00, '2023-03-10'),
(4, 'Megha', 'Mathematics', 11000.00, '2023-01-25'),
(5, 'Sneha', 'Computer Science', 17000.00, '2023-02-28'),
(6, 'Sneha', 'Mathematics', 20000.00, '2023-03-05'),
(7, 'Kabir', 'Information Technology', 8500.00, '2023-04-12'),
(8, 'Anaya', 'Physics', 13000.00, '2023-01-30'),
(9, 'Ishaan', 'Mathematics', 15000.00, '2023-02-15'),
(10, 'Jaya', 'Physics', 22000.00, '2023-03-20');

SELECT student_id, student_name, course, fee FROM student_profile WHERE fee > 10000;
SELECT * FROM student_profile WHERE course="Computer Science";
