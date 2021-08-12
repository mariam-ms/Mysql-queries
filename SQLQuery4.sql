--1

select Dependent_name from Dependent d,Employee e  where e.Sex ='f' and d.Sex='f'
union 
select Dependent_name from Dependent d,Employee e  where e.Sex ='m' and d.Sex='m'
--2

select Pname, sum(Hours)
from Project p , Works_for w 
where p.Pnumber= w.Pno
group by Pname
--3
select d.* from Departments d, employee e where e.Dno=d.Dnum and
 e.SSN=(select min (SSN) from Employee) 


--4
select fname+''+lname "full name", max(Salary) , min(Salary), avg(isnull(Salary,0))
from Employee
group by fname+''+lname

--5
select s.lname from  Employee e , Employee s where e.SSN = s.SSN 
except 
select s.lname  from  Employee e , Employee s , Dependent d 
where e.SSN = s.SSN and d.ESSN=s.SSN

--6
select Dnum,Dname, count(e.SSN) from Departments d, Employee e
where d.Dnum=e.Dno 
group by Dnum,Dname
having avg(e.salary)<all (select avg(e.Salary) from Employee)

--7
select e.Fname+''+ e.lname, p.* from Employee e, Project p, Works_for w
where e.SSN=w.ESSn and p.Dnum=e.Dno order by e.Dno, Fname , Lname

--8 
select salary from Employee where Salary in  (select top(2) Salary from Employee
order by salary desc)
 
 --9
 select Fname from Employee e , Dependent d
 where d.Dependent_name like '%'+fname+'%' or d.Dependent_name like '%'+Lname+'%'



