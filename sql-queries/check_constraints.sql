USE UstDB;
--delete  from Student where id=3;
--select * from Student;
--desc student;
--truncate table student where id=3;
--select distinct age from Student;
--select distinct age from Student order by
--select count(age) from Student;
--select * from Student;
--select * from Student
--select  count(age)  from Student;
--update student set age=30 where id=2;
--select * from Student
--select top 2 age from student;
--select first(age) from Student;
--select last(age) from Student;
--select * from student where FirstName like 'm%'
--select * from student where FirstName like '%m%'
--select * from student where FirstName like '%m'
--select * from student order by age delete from Student;
--Insert into Student(Id,FirstName,LastName,email,age) values(1,'Maria','Augustine','maria@gmail.com',23);
--Insert into Student values(2,'Lizza','Augustine','lizza@gmail.com',22);
--insert into Student values(3,'Aleena','Ram','al@gmail.com',17),
--(4,'raj','ram','raj@gmail.com',35);
--select * from Student;
--alter table  student  add Mark int
--select * from Student;
--update student set mark =45 where id=1
--select * from Student;
--Insert into Student(Id,FirstName,LastName,email,age,Mark) values(1,'Maria','Augustine','maria@gmail.com',23,48);
--Insert into Student values(2,'Lizza','Augustine','lizza@gmail.com',22,50);
--insert into Student values(3,'Aleena','Ram','al@gmail.com',17,38),
--(4,'raj','ram','raj@gmail.com',35,60);
--select * from Student;
--select * from student where mark between 40 and 50;
--select count(distinct age) from student
--select * from student where age in (22,35)
--select * from student where age=17 or age =35
--select * from student where not  age=17

--delete from Student
--create table customer(Id int ,FirstName varchar(50),LastName varchar(50),age int check(age>0 and age<150) ,salary int);
--select * from customer;
--insert into  customer values(1,'Maria','Augustine',-1,10000)
--insert into  customer values(1,'Maria','Augustine',24,10000)
--delete from customer;
--alter table student add check(mark>0)
--Insert into Student values(2,'Lizza','Augustine','lizza@gmail.com',-1,50);
--select * from Student;
--select * from customer;
--alter table customer add check(salary>5000)
--alter table customer add check(age>0 and age<150)
--insert into  customer values(1,'Lizza','Augustine',160,12000)
alter table customer drop CK__customer__age__35BCFE0A
--create table college(college_id int,CollegeName varchar(50),CollegeCountry varchar(50) default 'India');
--delete from college;
select * from college;
--insert into college (college_id,CollegeName) values(1,'cusat');











