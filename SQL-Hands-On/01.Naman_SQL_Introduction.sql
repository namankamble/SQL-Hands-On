-- Introduction to SQL

-- SQL (Structured Query Language) is a standard programming language used to manage and manipulate relational databases.
-- It allows users to perform various operations on data such as retrieving, inserting, updating, and deleting records.

-- Key Features of SQL:
-- 1. Data Definition Language (DDL): Commands like CREATE, ALTER, DROP to define the structure of the database.
-- 2. Data Manipulation Language (DML): Commands like SELECT, INSERT, UPDATE, DELETE to manipulate data within tables.
-- 3. Data Control Language (DCL): Commands like GRANT, REVOKE to control access to data.
-- 4. Transaction Control Language (TCL): Commands like COMMIT, ROLLBACK to manage transactions.

-- Sample SQL Commands:

-- 1. Creating a Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    HireDate DATE
);

-- 2. Inserting Data into the Table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Position, Salary, HireDate)
VALUES (1, 'John', 'Doe', 'Manager', 75000.00, '2020-01-15');

-- 3. Retrieving Data
SELECT * FROM Employees;

-- 4. Updating Data
UPDATE Employees
SET Salary = 80000.00
WHERE EmployeeID = 1;

-- 5. Deleting Data
DELETE FROM Employees
WHERE EmployeeID = 1;

-- 6. Dropping the Table
DROP TABLE Employees;

-- End of SQL Introduction
