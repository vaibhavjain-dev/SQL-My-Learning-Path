-- Create a new database named 'employee'
CREATE DATABASE employee;

-- Use the newly created database
USE employee;

-- Create the 'employee' table with appropriate columns
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
);

-- Insert sample data into the 'employee' table
INSERT INTO employee (id, name, age, department, city, salary) VALUES
    (1, 'Rahul', 25, 'IT', 'Mumbai', 1500),
    (2, 'Afsara', 26, 'HR', 'Pune', 1500),
    (3, 'Abhishek', 27, 'IT', 'Mumbai', 1500),
    (4, 'Aditya', 25, 'Marketing', 'Surat', 1500),
    (5, 'Raj', 26, 'IT', 'Indore', 1500);

-- Select all records from the 'employee' table
SELECT * FROM employee;

-- Update the salary for employees in the HR department
SET SQL_SAFE_UPDATES = 0;  -- Disable safe updates to allow updates without a WHERE clause
UPDATE employee
SET salary = 50000
WHERE department = 'HR';

-- Update the name of the employee from 'Afsara' to 'Almas'
UPDATE employee
SET name = 'Almas'
WHERE name = 'Afsara';

-- Delete employees from the HR department
DELETE FROM employee
WHERE department = 'HR';

-- Delete the employee named 'Raj'
DELETE FROM employee
WHERE name = 'Raj';

-- Select names and ages of all remaining employees
SELECT name, age FROM employee;

-- Select all records from the 'employee' table to see the final state
SELECT * FROM employee;