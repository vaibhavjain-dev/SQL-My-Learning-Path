-- Operators in SQL

-- Create a new database for employee records
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

-- Insert employee records into the table
INSERT INTO employee (id, name, age, department, city, salary)
VALUES
    (1, 'Rahul', 25, 'IT', 'Mumbai', 1000),
    (2, 'Afsara', 26, 'HR', 'Pune', 1100),
    (3, 'Abhishek', 27, 'IT', 'Mumbai', 1200),
    (4, 'Aditya', 25, 'Marketing', 'Surat', 1300),
    (5, 'Raj', 26, 'IT', 'Indore', 100);

-- Select all employees
SELECT * FROM employee; 

-- AND Operator: List employees older than 20 in the IT department
SELECT * FROM employee
WHERE age > 20 AND department = 'IT';

-- OR Operator: List employees older than 20 or in the IT department
SELECT * FROM employee
WHERE age > 20 OR department = 'IT';

-- NOT Operator: List employees whose department is neither IT nor HR
SELECT * FROM employee
WHERE department NOT IN ('IT', 'HR'); 

-- IN Operator: List employees whose department is either IT or HR
SELECT * FROM employee
WHERE department IN ('IT', 'HR');

-- IS NULL / NOT NULL Operator: List employees with a non-null department
SELECT * FROM employee
WHERE department IS NOT NULL; 

-- LIKE Operator %: List names starting with 'A'
SELECT * FROM employee
WHERE name LIKE 'A%';

-- LIKE Operator _: List names with 'A' in the second position
SELECT * FROM employee 
WHERE name LIKE '_A%';

-- BETWEEN Operator: List employees with a salary between 1000 and 1500
SELECT * FROM employee
WHERE salary BETWEEN 1000 AND 1500;