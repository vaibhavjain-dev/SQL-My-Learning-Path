-- Clauses in SQL

-- Create a new database named 'employee'
CREATE DATABASE employee;

-- Use the 'employee' database
USE employee; 

-- Create a table named 'employee' with the specified columns
CREATE TABLE employee (
    id INT PRIMARY KEY,          -- Unique identifier for each employee
    name VARCHAR(50),           -- Employee's name
    age INT,                    -- Employee's age
    department VARCHAR(50),     -- Department where the employee works
    city VARCHAR(50),           -- City where the employee resides
    salary INT                  -- Employee's salary
);

-- Insert sample employee records into the 'employee' table
INSERT INTO employee (id, name, age, department, city, salary)
VALUES
    (1, "Rahul", 25, "IT", "Mumbai", 1000),
    (2, "Afsara", 26, "HR", "Pune", 1100),
    (3, "Abhishek", 27, "IT", "Mumbai", 1200),
    (4, "Aditya", 25, "Marketing", "Surat", 1300),
    (5, "Raj", 26, "IT", "Indore", 100);

-- Retrieve all records from the 'employee' table
SELECT * FROM employee; 

-- Limit Clause: Retrieve only the first 2 records from the 'employee' table
SELECT * FROM employee
LIMIT 2;

-- Order By Clause: Retrieve all records ordered by salary in ascending order
SELECT * FROM employee
ORDER BY salary ASC;

-- GROUP BY Clause: Calculate the average salary for each department
SELECT department, AVG(salary) AS avgSalary 
FROM employee
GROUP BY department;

-- HAVING Clause: Filter departments to show only those with an average salary of 1000 or more
SELECT department, AVG(salary) AS AvgSalary
FROM employee
GROUP BY department
HAVING AvgSalary >= 1000;