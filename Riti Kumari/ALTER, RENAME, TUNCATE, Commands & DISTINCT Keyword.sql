-- Create the employee database
CREATE DATABASE employee;

-- Use the employee database
USE employee;

-- Create the employee table
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
);

-- Insert records into the employee table
INSERT INTO employee (id, name, age, department, city, salary) VALUES
    (1, 'Rahul', 25, 'IT', 'Mumbai', 1500),
    (2, 'Afsara', 26, 'HR', 'Pune', 1500),
    (3, 'Abhishek', 27, 'IT', 'Mumbai', 1500),
    (4, 'Aditya', 25, 'Marketing', 'Surat', 1500),
    (5, 'Raj', 26, 'IT', 'Indore', 1500);

-- Select all records from the employee table
SELECT * FROM employee;

-- ALTER Commands

-- 1. Add a column for Date of Birth
ALTER TABLE employee ADD DoB VARCHAR(10) DEFAULT 'Np';

-- 2. Drop the DoB column
ALTER TABLE employee DROP COLUMN DoB;

-- 3. Modify the datatype of the existing age column
ALTER TABLE employee MODIFY age VARCHAR(5);

-- 4. Change the name of the existing age column to emp_age
ALTER TABLE employee CHANGE age emp_age VARCHAR(50);

-- 5. Rename the emp_age column back to age
ALTER TABLE employee RENAME COLUMN emp_age TO age;

-- RENAME Commands

-- Rename the employee table to employees
RENAME TABLE employee TO employees;

-- Select all records from the employees table
SELECT * FROM employees;

-- Rename the name column to emp_name
ALTER TABLE employees RENAME COLUMN name TO emp_name;

-- Rename the database employee to xyz
RENAME DATABASE employee TO xyz;

-- TRUNCATE Command

-- Create the SalaryDetails table
CREATE TABLE SalaryDetails (
    salary INT,
    Increment INT
);

-- Insert records into the SalaryDetails table
INSERT INTO SalaryDetails (salary, Increment) VALUES
    (1200, 5),
    (1300, 6),
    (1400, 7),
    (1500, 8),
    (1600, 9),
    (1700, 9);

-- Truncate the SalaryDetails table
TRUNCATE TABLE SalaryDetails;

-- DISTINCT Keyword

-- Select distinct departments from the employees table
SELECT DISTINCT department FROM employees;

-- Select distinct departments and ages from the employees table
SELECT DISTINCT department, age FROM employees;