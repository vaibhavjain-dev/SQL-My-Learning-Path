-- Create the database if it does not exist
CREATE DATABASE IF NOT EXISTS instagramDb;

-- Use the created database
USE instagramDb;

-- Create the users table if it does not exist
CREATE TABLE IF NOT EXISTS users (
    userid INT PRIMARY KEY,
    userName VARCHAR(50),
    email VARCHAR(100)
);

-- Create the posts table if it does not exist
CREATE TABLE IF NOT EXISTS posts (
    postId INT PRIMARY KEY,
    userId INT,
    caption VARCHAR(100),
    FOREIGN KEY (userId) REFERENCES users(userid) -- Establishing a foreign key relationship
);

-- Insert sample data into the users table
INSERT INTO users (userid, userName, email)
VALUES
    (1, 'Vai', 'vai@gmail.com'),
    (2, 'Raj', 'raj@gmail.com'),
    (3, 'Riti', 'riti@gmail.com');

-- Insert sample data into the posts table
INSERT INTO posts (postId, userId, caption)
VALUES
    (101, 1, 'Light'),  -- Corrected userId to match existing users
    (102, 1, 'Air'),    -- Corrected userId to match existing users
    (103, 2, 'Water');  -- Corrected userId to match existing users

-- Show all tables in the database
SHOW TABLES;

-- Select all records from the users table
SELECT * FROM users;

-- Select all records from the posts table
SELECT * FROM posts;