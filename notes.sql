--notes on dbms programming:
--------------------------------
use ITI

--the three following lines must be run as a one batch
declare @x int , @name varchar(30)--declartion 
select @x = st_age, @name=St_Fname from Student where St_Id= 4 --assigning value from db table
select @x, @name --to display

declare @y int =(select avg(st_age) from Student) -- declartion and assigning in one line

--when queries return multi values, we must use array as variable 
declare @t table (x int ) --one dim array
insert into @t --put return values of the queries in the array
select st_age from Student where St_Address ='alex' --query
select * from @t --display values

--dynamic top func.
declare @x int=8
select top(@x)*from Student


---------------------------------
--dynamic query
declare @col varchar(20)='*', @t varchar(30)= 'instructor'
execute (' select '+@col+' from '+@t)
execute('select * from student')
--global vars
select @@VERSION
select @@ROWCOUNT

--control of flow statements
--if , ex:
declare @z int = 100
if @z>0
begin 
select 'x is positive'
end
else
select 'x is negative'
--if exists and if not exists

if exists(select name from sys.tables where name ='projects' )
select 'table exists'
else 
create table projects (cid int, cname varchar(30))
select * from projects
--begin try end try begin catch end catch
--while 
declare @u int =10
while @u <=20
begin 
set @u+=1
if @u=13
continue 
if @u=15
break
select @u
end

--choose and wait for

/*types of tables
a)physical tables :the tables we made for th db
b) variable tables : arrays that we made per batch 
c)local tables: temp variable during its session (if we refersh th db it will volatile)
ex: create table #temp ( eid int,edate ) 
d)global tables : temp variable, shared table between users,
will volatile when all users end the session between them and db
ex: create table ##temp ( eid int , edate)
*/
--import export wizards
--right click => tasks => import or export data 

/* functions 
a)builtin functions
b)user defined functions 
*/





