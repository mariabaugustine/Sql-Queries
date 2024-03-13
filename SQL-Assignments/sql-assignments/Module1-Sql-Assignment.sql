CREATE DATABASE ModuleDB

GO

USE ModuleDB

GO

CREATE TABLE Department(Id INT PRIMARY KEY IDENTITY,Name VARCHAR(20),
DeptHead VARCHAR(20),Location VARCHAR(20))

GO

INSERT INTO Department VALUES
('IT','Tony','Chennai'),
('PayRoll','Yamuna','Kerala'),
('HR','RAM','Pune'),
('TimeSheet','George','Bangalore')

GO

CREATE TABLE GenderType(Id INT PRIMARY KEY IDENTITY,Gender VARCHAR(20))

GO

INSERT INTO GenderType VALUES
('Male'),
('Female')

Go

CREATE TABLE Employee(Id INT PRIMARY KEY IDENTITY,Name VARCHAR(20),
country VARCHAR(20) DEFAULT 'India',Salary INT,
DepartmentId INT FOREIGN KEY REFERENCES Department(Id),
GenderId INT FOREIGN KEY REFERENCES GenderType(Id))

GO

INSERT INTO Employee(Name,Salary,DepartmentId,GenderId)VALUES
('Jitu',4000,1,1),
('Dibas',6500,2,1),
('Gajendra',3800,2,1),
('Raja',9000,1,1),
('Jeni',5800,3,2),
('Chandin',8500,1,2),
('pintu',9500,NULL,1),
('Subrat',9800,NULL,1)

GO

CREATE PROCEDURE sp_GetAllEmployeeDetails
AS
BEGIN
SELECT Employee.Name,Employee.country,Employee.Salary,Department.Name,GenderType.Gender
FROM Employee
LEFT JOIN Department ON Employee.DepartmentId=Department.Id 
JOIN GenderType ON Employee.GenderId=GenderType.Id
END

GO

EXECUTE sp_GetAllEmployeeDetails







