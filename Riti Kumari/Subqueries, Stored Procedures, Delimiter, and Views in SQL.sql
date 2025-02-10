-- ===========================================
-- Subqueries, Stored Procedures, DELIMITER, and Views
-- ===========================================
-- !. Subquries
-- ===========================================
-- Step 1: Create a new database named 'employee'
-- ===========================================
CREATE DATABASE employee;

-- ===========================================
-- Step 2: Use the 'employee' database
-- ===========================================
USE employee; 

-- ===========================================
-- Step 3: Create a table named 'employee' with the specified columns
-- ===========================================
CREATE TABLE employee (
    id INT PRIMARY KEY,         
    name VARCHAR(50),           
    age INT,                    
    department VARCHAR(50),     
    city VARCHAR(50),           
    salary INT                  
);

-- ===========================================
-- Step 4: Insert sample employee records into the 'employee' table
-- ===========================================
INSERT INTO employee (id, name, age, department, city, salary)
VALUES
    (1, 'Rahul', 25, 'IT', 'Mumbai', 1000),
    (2, 'Afsara', 26, 'HR', 'Pune', 1100),
    (3, 'Abhishek', 27, 'IT', 'Mumbai', 1200),
    (4, 'Aditya', 25, 'Marketing', 'Surat', 1300),
    (5, 'Raj', 26, 'IT', 'Indore', 100);

-- ===========================================
-- Step 5: Retrieve all employee records
-- ===========================================
SELECT * FROM employee;

-- ===========================================
-- Queries Using WHERE Clause
-- ===========================================

-- Query 1: Find employees with a salary greater than the minimum salary
SELECT MIN(salary) AS min_salary FROM employee;

-- Employees with salary greater than the minimum salary
SELECT name, salary
FROM employee
WHERE salary > (SELECT MIN(salary) FROM employee);

-- Query 2: Find employees with the minimum age
SELECT MIN(age) AS min_age FROM employee;

-- Employees with the minimum age
SELECT name, age
FROM employee
WHERE age = (SELECT MIN(age) FROM employee);

-- ===========================================
-- Queries Using FROM Clause
-- ===========================================

-- Query 3: Find employees with age greater than the minimum age
SELECT MIN(age) AS min_age FROM employee;

-- Employees with age greater than the minimum age
SELECT emp.name, emp.age
FROM employee emp, (SELECT MIN(age) AS min_age FROM employee) AS min_age_query
WHERE emp.age > min_age_query.min_age;

-- ===========================================
-- Queries Using SELECT Clause
-- ===========================================

-- Query 4: Print the age of employees along with the average age
SELECT AVG(age) AS avg_age FROM employee;

-- Print employee age and average age
SELECT age, (SELECT AVG(age) FROM employee) AS avg_age
FROM employee;

-- ===========================================
-- Finding the Nth Highest Salary
-- ===========================================

-- Query 5: Find the Nth highest salary in the dataset
SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 0, 1;  -- Change LIMIT values to find different Nth highest salaries



-- ===========================================
-- 2. Stored Procedures (With example)
-- ===========================================

-- Create an orders table
CREATE TABLE IF NOT EXISTS orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    orderName VARCHAR(50) NOT NULL
);

-- Insert details into the orders table
INSERT INTO orders (orderName) VALUES
    ('Fruits'),
    ('Ball'),
    ('Utensils');
    
DELIMITER //
CREATE PROCEDURE getOrderDetails()
BEGIN
    SELECT * FROM orders;
END //
DELIMITER ;

-- To call this procedure, use the CALL keyword
CALL getOrderDetails();

-- (Example 2 - Return the details of order by id) (Stored procedure with parameters)
DELIMITER //
CREATE PROCEDURE getAllOrderDetailsById(IN orderId INT)
BEGIN
    SELECT * FROM orders
    WHERE id = orderId;
END //
DELIMITER ;



-- ===========================================
-- 3.Views in SQL
-- ===========================================

-- Creating a view 
CREATE VIEW employeeView AS 
SELECT id, name, city FROM employee;

-- To see views
SELECT * FROM employeeView;