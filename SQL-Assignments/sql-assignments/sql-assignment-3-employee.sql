CREATE DATABASE EmployeeDB

go

USE EmployeeDB

go

CREATE TABLE Country(CountrtyId int PRIMARY KEY IDENTITY(1,1),
CountryName VARCHAR(20))

INSERT INTO Country VALUES('India'),
('USA'),('England'),('France')

go

CREATE Table Gender(GenderId int PRIMARY KEY IDENTITY,
GenderType VARCHAR(20))

go

INSERT INTO Gender VALUES('Male'),
('Female')

CREATE TABLE Employee(ID INT PRIMARY KEY IDENTITY(1000,5),Name VARCHAR(20),
CountryId INT FOREIGN KEY REFERENCES Country(CountrtyId),
GenderId INT FOREIGN KEY REFERENCES Gender(GenderId))

go

INSERT INTO Employee VALUES('John',1,1),
('Jessie',4,2),
('Tina',2,2),
('Thomas',3,1),
('Johnson',2,1),
('Riya',3,2),
('Tommy',4,1),
('Preeti',1,2)

SELECT e.ID,e.Name,g.GenderType,c.CountryName
FROM Employee e  JOIN Country c ON  e.CountryId=c.CountrtyId 
JOIN  Gender g ON  e.GenderId=g.GenderId

go

SELECT e.ID,e.Name,g.GenderType,c.CountryName FROM Employee e
JOIN Country c ON e.CountryId=c.CountrtyId
JOIN Gender g ON  e.GenderId=g.GenderId 
where GenderType='Male'

go

SELECT e.ID,e.Name,g.GenderType,c.CountryName FROM Employee e
JOIN Country c ON e.CountryId=c.CountrtyId
JOIN Gender g ON  e.GenderId=g.GenderId 
where GenderType='Female'

go

SELECT g.GenderType,COUNT(*) AS Total FROM Employee e 
JOIN Gender g ON e.GenderId=g.GenderId GROUP BY GenderType

go

SELECT c.CountryName,COUNT(*) AS Total FROM Employee e
JOIN Country c ON e.CountryId=c.CountrtyId GROUP BY CountryName











