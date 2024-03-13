CREATE DATABASE CustomerDB

go

USE CustomerDB

go


CREATE TABLE Customer
(Id INT PRIMARY KEY IDENTITY(1,1),
Name VARCHAR(15),Gender VARCHAR(15),
Salary int,City VARCHAR(15))


go

INSERT INTO Customer VALUES
('Tom','Male',4000,'London'),
('Pam','Female',3000,'New York'),
('John','Male',3500,'London'),
('Sam','Male',4500,'London'),
('Todd','Male',2800,'Sydney'),
('Ben','Male',7000,'New York'),
('Sara','Female',4800,'Sydney'),
('Valarie','Female',5500,'New York'),
('James','Male',6500,'London'),
('Russell','Male',2800,'London')

SELECT * FROM Customer

go

CREATE PROCEDURE sp_TotalSalayByCity
AS
BEGIN

SELECT CITY,SUM(Salary) AS TotalSalary  FROM Customer GROUP BY City

END

go

execute sp_TotalSalayByCity

go

CREATE PROCEDURE sp_TotalSalaryByCityGender

AS

BEGIN

SElECT City,Gender, SUM(Salary) AS TotalSalary FROM Customer GROUP BY City,Gender

END

go

execute sp_TotalSalaryByCityGender

go

CREATE PROCEDURE sp_TotalSalaryAndEmployee

AS

BEGIN

SELECT City,Gender,COUNT(*) AS TOTAL_EMPLOYEE,SUM(Salary) 
AS Total_Salary 
FROM Customer GROUP BY City,Gender

END

go

execute sp_TotalSalaryAndEmployee

go

CREATE PROCEDURE sp_DisplayAll(@gender varchar(15),@City varchar(15))

AS

BEGIN

SELECT * FROM Customer where Gender=@gender and City=@city 

END

go

execute sp_DisplayAll male,sydney



