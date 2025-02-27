CREATE TABLE Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY, 
    FirstName VARCHAR(50) NOT NULL, 
    LastName VARCHAR(50) NOT NULL, 
    DateOfBirth DATE,
    Email VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(18,2)
);

CREATE TABLE Department (
    DepartmentID INT IDENTITY(1,1) PRIMARY KEY, 
    DepartmentName VARCHAR(100) NOT NULL
);

-- Adding foreign key constraints
ALTER TABLE Employee
ADD CONSTRAINT FK_Department
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID);

-- Sample Data Insertion
INSERT INTO Department (DepartmentName) 
VALUES ('HR'), ('IT'), ('Finance');

INSERT INTO Employee (FirstName, LastName, DateOfBirth, Email, DepartmentID, Salary) 
VALUES ('John', 'Doe', '1980-05-15', 'john.doe@example.com', 1, 55000.00),
       ('Jane', 'Smith', '1990-08-23', 'jane.smith@example.com', 2, 60000.00),
       ('Jim', 'Brown', '1985-02-10', 'jim.brown@example.com', 3, 70000.00);
