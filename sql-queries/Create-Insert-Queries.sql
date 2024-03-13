--DROP database StudentsDB
--CREATE TABLE Student(Id int,FirstName varchar(50),LastName varchar(50));
--Alter table Student add email varchar(20);
--select * from Student;
--Insert into Student(Id,FirstName,LastName) values(1,'Maria','Augustine');
--select * from Student;
--Insert into Student(Id,FirstName,LastName,email) values(1,'Maria','Augustine','maria@gmail.com');
--select * from Student;
--Insert into Student values(2,'Lizza','Augustine','lizza@gmail.com');
--select * from Student;
--delete from student where id=2;
--Insert into Student values(2,'Lizza','Augustine','lizza@gmail.com');
--select * from Student;
--insert into Student values(3,'Aleena','Ram','al@gmail.com'),
--(4,'raj','ram','raj@gmail.com');
--select * from Student;
--select FirstName,LastName from Student;
--alter table student add age int;

--Delete from Student;
--Insert into Student(Id,FirstName,LastName,email,age) values(1,'Maria','Augustine','maria@gmail.com',23);
--Insert into Student values(2,'Lizza','Augustine','lizza@gmail.com',22);
--insert into Student values(3,'Aleena','Ram','al@gmail.com',17),
--(4,'raj','ram','raj@gmail.com',35);

--select * from student where age>25;
--select Id,FirstName+' '+LastName as Fullname from student where age>20 ;
select * from student where age>25;

