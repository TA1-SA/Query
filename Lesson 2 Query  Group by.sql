--Group by functions 
/*
any data type ----> max,min,count,

numeric data type only --> avg,sum

*/


select sum(salary) sum ,max(salary) max,min(salary)min,
 avg(salary)avg,count(salary)cnt
  from employees

  select max(salary) max  from employees


  select department_id,max(salary)max,min(salary)min,count(salary)cnt from employees
  group by department_id 

 
 select * from employees



 
  select manager_id,max(salary)max
  from employees
  where manager_id is not null
  group by manager_id 



  
  select job_id,max(salary)max
  from employees
  where manager_id is not null  
  group by job_id 
  having max(salary)>10000
  order by 2 desc
  /*
  ====================
  aziz commands
  */

  
select count( distinct manager_id)  from employees

select max(salary)-min(salary) from employees


select manager_id, min(salary) from employees
where manager_id is not null 
group by manager_id
having min(salary) > 6000
order by min(salary) desc


