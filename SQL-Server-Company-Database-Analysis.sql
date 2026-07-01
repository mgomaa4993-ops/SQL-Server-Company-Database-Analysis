select *
from employee
----------------------------------------------------------------------------------

select fname,lname,ssn
from employee
-----------------------------------------------------------------------------------
-- which departments have employees ?

select distinct dno
from employee
-----------------------------------------------------------------------------------
-- Employees ordered by salary (low to high)

select *
from employee
order by salary asc

-- Employees ordered by salary (high to low)

select*
from employee
order by salary desc
------------------------------------------------------------------------------------
-- First sort by department number -> then within each department, show higher-paid employees first.

select *
from employee
order by dno, salary desc
------------------------------------------------------------------------------------
-- Top 2 highest-paid employee

select top(2)*
from employee
order by salary desc
------------------------------------------------------------------------------------
--- get the top 1 youngest employee

select top(1) *
from employee
order by bdate asc
------------------------------------------------------------------------------------
-- female employees in department 3

select *
from employee
where gender='F' and dno=3
------------------------------------------------------------------------------------
-- employees in department 1 or 3 

select *
from employee
where dno=3 or dno=1

select *
from employee
where dno in(1,3)
-----------------------------------------------------------------------------------
-- Employee who are not in department 2 or 3

select *
from employee
where dno!=1 or dno!=3
-----------------------------------------------------------------------------------

--- find employees with no supervisor and in department 3

select *
from employee
where superssn is null and dno=3
-----------------------------------------------------------------------------------
--- find employees with supervisor and in department 3

select *
from employee
where superssn is not null and dno=3
-----------------------------------------------------------------------------------
-- find employees whith salary more than 63000 and less than 65000

select *
from employee
where salary  > 63000 and salary < 65000

select *
from employee
where salary between 63000 and 65000
--------------------------------------------------------------------------------
select *
from employee
where bdate between '01-01-1990' and '01-01-1995'

---------------------------------------------------------------------------------
select *
from employee
where len(fname)=4
----------------------------------------------------------------------------------
select fname as first_name, lname as last_name ,salary,isnull(superssn,'No Super') as super
from employee
where superssn is null
---------------------------------------------------------------------------------------
-- Top 2 employee without a supervisor order by salary

select top(2)*
from employee
where superssn is null
order by salary desc
----------------------------------------------------------------------------------------
--- unique list of supervisor ssns , replacing with ' No super'

select distinct isnull(superssn,'No Super') as uniqe_ssn 
from employee
----------------------------------------------------------------------------------------
-- Total number of employees

select count(ssn) as count_employee
from employee
----------------------------------------------------------------------------------------
--- Total number of department

select count(distinct dno) as total_department
from employee
where dno is not null
----------------------------------------------------------------------------------------
-- Average salary
select avg(salary) as average_salary , sum(salary) as total_salary
from employee

select sum(salary) as total_salary
from employee
----------------------------------------------------------------------------------------
--Get the average salary of female employee only

select avg(salary) as average_female_salary
from employee
where gender='f'
----------------------------------------------------------------------------------------

-- Find the maximum salary for female employees.
select max(salary) as max_salary
from employee
where gender='f'
----------------------------------------------------------------------------------------

-- Find the minimum salary for male employees.
select min(salary) as min_salary
from employee
where gender='m'

----------------------------------------------------------------------------------------

select avg(salary) as avereg_salary
from employee
group by dno

-- count how many employee are in each department

select dno,count(*) as total_employee
from employee
where dno is not null
group by dno

-- Departments with averge salary greater than 65.000
select dno ,avg(salary) as averge_salary
from employee
group by dno
having avg(salary)>65000

-- Departments with more than 1 employee
select dno,count(*) as total_employee
from employee
group by dno
having dno is not null and count(*)!=1

-- list department where the total salary is more than 70.000

select dno ,sum (salary) as total_salary
from employee
group by dno 
having dno is not null and sum(salary)>70000

-----------------------------------------------------------------------------
select dno, avg(salary) as avg_salary
from employee
group by dno
having avg(salary)>60000

select *
from employee, department
where employee.dno =department.dnumber


select *
from employee inner join department
on employee.dno=department.dnumber

select * 
from employee left join department
on employee.dno=department.dnumber

select * 
from employee right join department
on employee.dno=department.dnumber

select * 
from employee full join department
on employee.dno=department.dnumber






