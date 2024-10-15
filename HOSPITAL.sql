CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY ,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age > 15),
    department VARCHAR(50) UNIQUE,
    address VARCHAR(255) DEFAULT 'Kozhikode',
    tokenno INT AUTO_INCREMENT UNIQUE
);


DESCRIBE Patients;

INSERT INTO Patients (patient_id, name, age, department, address) VALUES
(1, 'Nimu', 30, 'Cardiology', 'Thrissur'),
(2, 'Asla', 25, 'Neurology', 'Kottakkal'),
(3, 'Sree', 40, 'Orthopdics','clt'),
(4, 'Rahul', 32, 'Dermatology', 'Calicut'),
(5, 'Meera', 28, 'Pediatrics', 'Kochi'),
(6, 'Vivek', 35, 'General Medicine', 'Malappuram'),
(7, 'Sofia', 45, 'Gynaecology','clt'),
(8, 'Deepak', 50, 'Psychiatry', 'Thrissur'),
(9, 'Anita', 29, 'Radiology','clt'),
(10, 'Arjun', 38, 'Orthopedics', 'Wayanad');

INSERT INTO Patients(patient_id, name, age, department) VALUES
(11,'Test',33,'Demo');

SELECT * from Patients;