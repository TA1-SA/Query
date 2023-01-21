--Subquery 


--whose salary greater than employee number 110
select * from employees
where salary >(select salary from employees
where employee_id=110)


--whose hiredate after employee number 114
select * from employees
where hire_date >(select hire_date from employees
where employee_id=114)



--highest salary
select * from employees
where salary =(select max(salary) from employees)


--whose salary below the avg
select * from employees
where salary <(select avg(salary) from employees)
order by salary


select * from departments


--working in sales department
select * from employees
where department_id =(select department_id from departments
where department_name='sales')


--whose salary is greater than all employees in dept 6
select * from employees
where salary> (select max(salary) from employees
					where department_id=6)

					select * from employees
where salary>all (select salary from employees
					where department_id=6)

					
					

--whose salary is greater than any employees in dept 6

select * from employees
where salary> (select min(salary) from employees
					where department_id=6)

					
select * from employees
where salary>any (select salary from employees
					where department_id=6)

--aziz code

select employee_id, last_name,department_id from employees
where department_id in (select department_id from employees 
						where last_name like'%u%')

select last_name,department_id,job_id from employees
where department_id in (select department_id from departments
						where location_id = '1700')

select last_name,salary from employees
where manager_id = (select employee_id from employees 
					where last_name='King')

select department_id, last_name, job_id from employees 
where department_id=(select department_id from departments 
					where department_name='Executive')

select last_name from employees 
where salary > ( select min(salary) from employees 
				where department_id=6)



