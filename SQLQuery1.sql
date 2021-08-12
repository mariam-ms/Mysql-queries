select * from Employee
select Fname , Lname, Salary, Dno from Employee  
select Pname,Plocation,Dnum 'department' from Project
select Fname, Lname, Salary 'annual comm'  from Employee where Salary = Salary+(10/100)
select SSN, Fname from Employee where Salary>1000
select SSN, Fname from Employee where Salary>10000
select Fname,Salary,Sex from Employee where Sex like '%f'
select Dname, Dnum from Departments where MGRSSN=968574
select Plocation,Pnumber,Pname from Project where Dnum=10
