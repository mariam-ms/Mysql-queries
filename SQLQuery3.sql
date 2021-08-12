use class1
create table instructor
(id int primary key identity (1,1),
salary int default 3000,
overtime int unique ,
bd date,
hiredate date default (getdate()),
address varchar(80),
fname varchar(20) ,
lname varchar(20),
netsal as (isnull(salary+overtime,0)),
age as (year(getdate())-year(bd)),
constraint sal check (salary>= 1000 and salary<=5000),
constraint adrs check (address in ('alex','cairo'))



)

create table course (
cid int primary key identity (10,10), 
cname varchar(20),
duration int unique 
)

create table lab(
lid int  , cid int,
locat varchar(20),
capacity varchar(20), 
primary key (lid, cid),
constraint cap check (capacity<20),
constraint crs_fk foreign key (cid)
references [dbo].[course](cid)
on delete cascade on update cascade

)

create table inst_course(
id int  , cid int ,
 primary key(id,cid),
 constraint inst_fk foreign key (id) references[dbo].[instructor](id),
 constraint crs_fk foreign key (cid) references [dbo].[course](cid)
 on delete cascade on update cascade




)