--query syntax 
/*
select * | colname|expression 
from tablename 
+where condition(s)
group by 
having condition
order by 

*/

select * from employees
select first_name ,last_name ,salary from employees
select first_name ,last_name ,salary*1.5 salary 
from employees
--whose salary greater than 10,000
select first_name,salary from employees
where salary>10000
order by salary

--whose salary greater than  or equal 10,000
select first_name,salary from employees
where salary>=10000
order by salary


--whose id equal 100
select employee_id,first_name,salary from employees
where employee_id=100


--whose id not equal 100

select employee_id,first_name,salary from employees
where employee_id!=100

select employee_id,first_name,salary from employees
where employee_id<>100

--whose last name is king

select * from employees
where Last_name='king'

--whose last name start with k

select * from employees
where Last_name like'k%'


--whose lastname ends with r
select * from employees
where Last_name like'%r'


--whose last name contains r
select * from employees
where Last_name like'%r%'

--whose  2nd character in his last name is r
select * from employees
where Last_name like'_r%'

--whose name length is 4
select * from employees
where Last_name like'____'


--whose name length is 4 and salary greater than or equal 10,000
select * from employees
where Last_name like'____' and salary >=10000

--whose salary between 5,000 and 10,000
select * from employees
where salary >=5000 and salary<=10000
order by salary

select * from employees
where salary between 5000 and 10000
order by salary


--whose last name start with a,b,c,d,e
select * from employees
where last_name between 'a' and 'e'
order by last_name

--whose salary is 10,000 and 11,000
select * from employees
where salary in (10000,11000)


--whose hire date is after 1994
select * from employees
where hire_date >'1994-12-31'
order by hire_date


select * from employees
where hire_date like '1994%'
order by hire_date
























