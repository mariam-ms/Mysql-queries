use ITI

--1 
select count(St_id) from Student 

--2
select distinct(Ins_Name) from Instructor  

--3
select ISNULL(s.St_Fname+' '+s.St_Lname,'none')as "student fullname",
ISNULL(d.Dept_Name,'none') as "dept name",
ISNULL(s.St_Id,'none')as " student id"
from Department d, Student s 
where d.Dept_Id=s.Dept_Id

--4

select i.Ins_Name, d.Dept_Name from Instructor i , Department d
where i.Dept_Id=d.Dept_Id

--5

select s.St_Fname+''+s.St_Lname "fullname" , c.Crs_Name
from Student s, Stud_Course sc , Course c
where  c.Crs_Id=sc.Crs_Id and s.St_Id=sc.St_Id and sc.Grade is not null

--6

select t.Top_Name, count(c.Crs_Name)from topic t , Course c
where c.Top_Id=t.Top_Id
group by t.Top_Name

--7

select max(Salary), min(Salary) from Instructor

--8
select Ins_Name from Instructor where Salary < any
( select avg(isnull(salary,0)) from Instructor)

--9
select d.Dept_Name from Instructor i , Department d 
where d.Dept_Id=i.Dept_Id and Salary = (select min(Salary) from Instructor)

--10

select salary from Instructor where salary in
(select top(2) salary
from Instructor
order by salary desc)

--11

select Ins_Name, coalesce(Salary,0) from Instructor 

--12

select s.St_Fname , e.* from Student s, Student e
where s.St_super =e.St_Id