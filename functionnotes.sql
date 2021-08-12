-- notes on functions 
--user defind function
--scalar function/ return only one value
create function getname (@id int)
returns varchar(20)
begin declare @name varchar(30)
select @name=st_fname from Student where St_Id=@id
return @name
end 
--to call function
select  dbo.getname(6)

--------------------------------------
-- inline/ multistatement 
--multi values , return table
--first => inline
create function getinst(@did int)
returns table
as
return 
( select ins_name, salary*12 as totalsalary
from Instructor
where dept_id = @did
)

select * from dbo.getinst(1) --we must use "from" as it's multi values

--second => multistatement we must use if statment in it.
create function getst(@format varchar(20))
returns @t table (id int, sname varchar(30))
as 
begin
if @format ='first'
insert into @t
select St_Id, st_fname from Student
else if @format ='last'
insert into @t
select St_Id, st_fname from Student
else if @format ='fulllname'
insert into @t
select St_Id, st_fname+''+St_Lname from Student
return
end
select * from getst('first')

