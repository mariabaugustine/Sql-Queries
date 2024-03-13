CREATE DATABASE StudentDB

go

USE StudentDB

go

CREATE TABLE Student(Id INT PRIMARY KEY IDENTITY(1000,5),
Name VARCHAR(20),Gender VARCHAR(20),
Mark int,CHECK(Mark>0 and Mark<=100))

go

INSERT INTO Student VALUES('John','Male',80),
('Jessie','Female',92),
('Jeena','Female',75),
('Thomas','Male',65),
('Johnson','Male',45),
('Meena','Female',50)

go

SELECT *  FROM Student

go


SELECT * FROM Student WHERE Gender='Male'

SELECT * FROM Student WHERE Gender='Female'

SELECT * FROM Student WHERE Mark>45

SELECT * FROM Student WHERE Name like 'j%'

SELECT * FROM Student WHERE Name like  '%a'

SELECT Gender,SUM(Mark) AS Total FROM Student GROUP BY Gender

SELECT Gender,COUNT(*)  AS Total FROM STUDENT GROUP BY Gender

SELECT Gender,COUNT(*) AS Total FROM STUDENT WHERE Mark> 70 GROUP BY Gender









