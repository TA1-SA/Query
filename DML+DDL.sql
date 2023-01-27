--DDL --
--create  alter drop truncat 

-- create table -
--create table tablename (col1 datatype(size),..etc)

create table t1(id int)
--DML
insert into t1 select 1
select * from t1

--DML   
delete  from t1



--table level contraints : 
/*
1-primary key 
2-unique
3-not null
4-foreign key
5-check 
*/


create table courses(id int primary key,
crs_name nvarchar(max) ,fees decimal(9,2) ,crsDate 
datetime)


insert into courses select 1,'sql',1000.5,getdate()

insert into courses select 2,'sql admin',1200.5,getdate()

select * from courses

create table student ( id int primary key,
st_name nvarchar(max),email nvarchar(200) unique,
mobile nvarchar(200) unique ,
address nvarchar(max) not null)

select * from student

insert into student (id,mobile,address,email,st_name)
values (10,'056','ruh','f@f.com','aziz')
;
insert into student 
values (20,'aziz','ruh@rg.com','05','ruh','CIS')


alter table student
add major nvarchar(max) 

select * from student


update student
set major='IS'
where id =10

update student
set major='CIS',st_name='mhmad'
where id =20

select * from student

delete student
where id=10


--delete all table data ,release storage space for table 
truncate table student 




select * from courses
select * from student


alter table courses
add stid int references student(id)

update courses
set stid=10 where id=1

update courses
set stid=20 where id=1


alter table courses
alter column course_name varchar(200)


select * from courses
select * from student


alter table courses
drop column stid

update  courses
set stid=null


alter table courses
drop column stid

alter table courses
drop constraint FK__courses__stid__4F7CD00D

alter table courses
drop column stid


alter table courses
drop column stid


create table enrolledCourses
( id int identity(10,10) primary key 
,studentId int references student(id),
courseid int references courses(id))




select * from courses
select * from student
select * from enrolledCourses

insert into enrolledCourses values (10,1)

insert into enrolledCourses values (20,1)


select courses.crs_name,student.st_name 
from courses join enrolledCourses 
on courses.id=enrolledCourses.courseid
join student 
on student.id=enrolledCourses.studentId


--disable constraint 
alter table emp
nocheck constraint [FK__EMP__DEPT_ID__4F7CD00D]




--enable constraint 
alter table emp
check constraint [FK__EMP__DEPT_ID__4F7CD00D]


