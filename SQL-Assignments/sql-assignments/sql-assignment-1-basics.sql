CREATE DATABASE SchoolDB

go

use SchoolDb

go

CREATE TABLE Student(Id int identity(100,1),
FirstName varchar(20),
LastName varchar(20),
Marks int ,check(marks>0 and marks<=100),
constraint Pk_Student_Id primary key(Id) );

go

Insert into Student values('Jhony','Ryan',55),
('Tina','Mari',75),
('Tim','Keith',65),
('Vineetha','Mathew',88),
('Varun','Jhon',92),
('Tarun','Varghese',94);

go

SELECT Id,FirstName,LastName FROM Student WHERE Marks>60



SELECT MAX(Marks) AS HighestMarks FROM Student



SELECT MIN(Marks) AS LowestMarks FROM Student



SELECT AVG(Marks) AS AverageMarks FROM Student;


