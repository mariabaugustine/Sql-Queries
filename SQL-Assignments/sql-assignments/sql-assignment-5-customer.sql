CREATE DATABASE CustomerDB

go

USE CustomerDB

go

CREATE TABLE Country(CountrtyId int PRIMARY KEY IDENTITY(1,1),
CountryName VARCHAR(20))

go

INSERT INTO Country VALUES('India'),
('USA'),('England'),('France')

go

CREATE Table Gender(GenderId int PRIMARY KEY IDENTITY,
GenderType VARCHAR(20))

go

INSERT INTO Gender VALUES('Male'),
('Female')

go

CREATE TABLE Customer(ID INT PRIMARY KEY IDENTITY(1000,5),Name VARCHAR(20),
CountryId INT FOREIGN KEY REFERENCES Country(CountrtyId),
GenderId INT FOREIGN KEY REFERENCES Gender(GenderId))

go


INSERT INTO Customer VALUES('John',1,1),
('Jessie',4,2),
('Tina',2,2),
('Thomas',3,NULL),
('Johnson',2,1),
('Riya',3,2),
('Tommy',4,NULL),
('Preeti',1,2)

go


CREATE PROCEDURE sp_GetDetails
AS
BEGIN
SELECT c.ID,c.Name,g.GenderType,co.CountryName FROM Customer c
LEFT JOIN Gender g ON c.GenderId=g.GenderId
JOIN Country co ON c.CountryId=co.CountrtyId
END

go

execute sp_GetDetails

go

CREATE PROCEDURE sp_DisplayDetailsByGender(@GenderType varchar(20))
AS
BEGIN
SELECT c.ID,c.Name,g.GenderType,co.CountryName FROM Customer c
JOIN Country co ON c.CountryId=co.CountrtyId
LEFT JOIN  Gender g ON  c.GenderId=g.GenderId Where GenderType=@GenderType
End
go

execute sp_DisplayDetailsByGender Female

go

CREATE Function DisplayDetailsByCountryIdGenderId(@CountryId int,@GenderId int)
RETURNS TABLE
AS
RETURN(SELECT c.ID,c.Name,g.GenderType,co.CountryName                                                   
FROM Customer c JOIN Gender g ON c.GenderId=g.GenderId
JOIN Country co ON c.CountryId=co.CountrtyId WHERE c.CountryId=@CountryId AND g.GenderId=@GenderId)


go

SELECT * FROM DisplayDetailsByCountryIdGenderId(1,1)

go

CREATE PROCEDURE sp_GroupByCountry
AS
BEGIN
SELECT co.CountryName,COUNT(*) AS TotalEmployee   FROM Customer c
JOIN Country co ON c.CountryId=co.CountrtyId GROUP BY CountryName
END

go



execute  sp_GroupByCountry




