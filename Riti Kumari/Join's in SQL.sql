-- 1. Create a database for e-commerce
CREATE DATABASE IF NOT EXISTS e_comm;
USE e_comm;

-- 2. Create a customer table in the e-commerce database
CREATE TABLE IF NOT EXISTS customer (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- 3. Insert details into the customer table
INSERT INTO customer (id, name) VALUES
    (1, 'Vaibhav'),
    (2, 'Riti'),
    (3, 'Raj'),
    (4, 'Rahul'),
    (5, 'Aditya'); 	

-- 4. Retrieve all data from the customer table
SELECT * FROM customer;

-- 5. Create an orders table in the e-commerce database
CREATE TABLE IF NOT EXISTS orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    orderName VARCHAR(50) NOT NULL
);

-- 6. Insert details into the orders table
INSERT INTO orders (orderName) VALUES
    ('Fruits'),
    ('Ball'),
    ('Utensils');

-- 7. Retrieve all data from the orders table
SELECT * FROM orders;

-- 8. INNER JOIN to combine customer and orders data
SELECT customer.id, orders.orderName, customer.name 
FROM customer
INNER JOIN orders ON customer.id = orders.id;

-- 9. LEFT JOIN to include all customers and their orders
SELECT * 
FROM customer
LEFT JOIN orders ON customer.id = orders.id; 

-- 10. RIGHT JOIN to include all orders and their customers
SELECT * 
FROM customer
RIGHT JOIN orders ON customer.id = orders.id; 

-- 11. Full Join (using UNION) to combine all customers and orders
SELECT * 
FROM customer
LEFT JOIN orders ON customer.id = orders.id
UNION
SELECT * 
FROM customer
RIGHT JOIN orders ON customer.id = orders.id; 

-- 2nd Part 

-- 12. Create a database for school
CREATE DATABASE IF NOT EXISTS school;
USE school;

-- 13. Create a student table in the school database
CREATE TABLE IF NOT EXISTS student (
    s_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    mentor_id INT
);

-- 14. Insert details into the student table
INSERT INTO student (s_id, name, mentor_id) VALUES
    (1, 'Ram', NULL),
    (2, 'Rahul', 1),
    (3, 'Riti', 1),
    (4, 'Riya', 3);
    
-- 15. Retrieve all data from the student table
SELECT * FROM student;

-- 16. Self Join to find mentors and their students
SELECT s1.name AS Mentor_Name, s2.name AS Student_Name
FROM student AS s1
JOIN student AS s2 ON s1.s_id = s2.mentor_id; 

-- * Exclusive Joins

-- 17. Left Exclusive Joins to find customers without orders
SELECT customer.*
FROM customer 
LEFT JOIN orders ON customer.id = orders.id
WHERE orders.id IS NULL;

-- 18. Right Exclusive Joins to find orders without customers
SELECT orders.*
FROM orders 
LEFT JOIN customer ON customer.id = orders.id
WHERE customer.id IS NULL;

-- 19. Full Exclusive Joins to find customers and orders that do not match
SELECT customer.*
FROM customer 
LEFT JOIN orders ON customer.id = orders.id
WHERE orders.id IS NULL
UNION 
SELECT orders.*
FROM orders 
LEFT JOIN customer ON customer.id = orders.id
WHERE customer.id IS NULL;

-- UNION Operator to combine IDs from both tables
SELECT id FROM customer
UNION
SELECT id FROM orders;