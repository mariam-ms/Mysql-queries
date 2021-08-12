
--1 

select dname, Dnum, MGRSSN, fname lname from Departments d inner join Employee e on 
d.MGRSSN=e.SSN

--2 

select Dname, Pname from Project p inner join Departments d on p.Dnum =d.Dnum

--3

select Dependent_name, d.Sex,d.Bdate,Fname from Dependent d left outer join Employee e
on d.ESSN=e.SSN

--4
select Pname, Pnumber , Plocation from Project where City in ('alex', 'cairo')

--5
select p.* from Project p where pname='%a'

--6
select Fname+' '+Lname "fullname" 
from Employee where Dno=30  and Salary between 1000 and 2000  

--7
select fname+' '+lname from Employee e, Project p, Works_for w where w.ESSn=e.SSN and w.Pno=p.Pnumber
and p.Dnum=10 and w.Hours >=10 and p.Pname='al rabwah'

--8
select a.fname+' '+a.lname "full name" from Employee e,Employee a  where e.Superssn = a.SSN and 
e.Fname='kamel' and e.Lname='mohamed'

--9

select Pname , fname+' '+lname  from Employee e , Project p , Works_for w 
where w.pno =p.Pnumber and e.ssn=w.essn order by p.Pname

--10

select Pnumber, e.Lname , e.Address, e.Bdate , p.Dnum ,p.City from Project p , Departments d , Employee e
where d.MGRSSN=e.SSN and p.Dnum=d.Dnum and p.City= 'Cairo'

--11 

select e.* from Employee e ,Departments d where e.SSN = d.MGRSSN

--12 
select * from Employee e left outer join Dependent d on d.ESSN = e.SSN