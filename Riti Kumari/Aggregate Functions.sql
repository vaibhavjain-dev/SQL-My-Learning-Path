-- Aggregate Functions in SQL

-- Create a new database for employee records
CREATE DATABASE employee;

-- Use the employee database
USE employee;

-- Create the employee table with relevant fields
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
);

-- Insert sample employee data into the table
INSERT INTO employee (id, name, age, department, city, salary) VALUES
    (1, "Rahul", 25, "IT", "Mumbai", 1000),
    (2, "Afsara", 26, "HR", "Pune", 1100),
    (3, "Abhishek", 27, "IT", "Mumbai", 1200),
    (4, "Aditya", 25, "Marketing", "Surat", 1300),
    (5, "Raj", 26, "IT", "Indore", 100);

-- Retrieve all records from the employee table
SELECT * FROM employee;

-- Aggregate Functions

-- Count the number of employees
SELECT COUNT(name) FROM employee;

-- Calculate the total salary of all employees
SELECT SUM(salary) FROM employee;

-- Calculate the average salary of employees
SELECT AVG(salary) FROM employee;

-- Find the minimum salary among employees
SELECT MIN(salary) FROM employee;

-- Find the maximum salary among employees
SELECT MAX(salary) FROM employee;