CREATE DATABASE college;

USE college;

-- unique constraint
CREATE TABLE student(
phoneNo INT UNIQUE
);

INSERT INTO student(phoneNo)
VALUES
(123),
(456),
(789);

-- not null constraint
CREATE TABLE student1(
age INT,
rollNo INT NOT NULL
);

INSERT INTO student1(age, rollNo)
VALUE (19, 1);

-- check constraint
CREATE TABLE student3(
age INT CHECK(age>18)
);

INSERT INTO student3(age)
VALUE (19);

-- default constraint
CREATE TABLE student4(
schoolName VARCHAR(50) DEFAULT 'xyz (Using default constraint)',
age INT
);

INSERT INTO student4(age)
VALUE (19);

select * from student4;


-- primary key constraint 
CREATE TABLE student5(
age INT,
rollNo INT PRIMARY KEY
);

-- unique
INSERT INTO student5(age, rollNo)
VALUES
(12,1),
(13,2),
(14,3);

-- not null
INSERT INTO student5(age)
VALUES
(12);


-- foreign key
CREATE TABLE course(
courseName VARCHAR(50),
rollNo INT,
FOREIGN KEY (rollNo) references student5(rollNo)
);



-- Summary
-- student Table: Contains a phoneNo column with a UNIQUE constraint to ensure all phone numbers are distinct. Three unique phone numbers are inserted.
-- student1 Table: Contains age and rollNo columns, with rollNo having a NOT NULL constraint. One record is inserted with an age and roll number.
-- student3 Table: Contains an age column with a CHECK constraint to ensure ages are greater than 18. A valid age of 19 is inserted.
-- student4 Table: Contains schoolName (with a DEFAULT value) and age columns. A record is inserted, using the default value for schoolName.
-- student5 Table: Contains age and rollNo columns, with rollNo as the PRIMARY KEY. Three records are inserted with unique roll numbers. An attempt to insert a record without a rollNo fails due to the NOT NULL constraint.
-- course Table: Contains courseName and rollNo columns, with rollNo as a FOREIGN KEY referencing student5(rollNo) to maintain referential integrity.