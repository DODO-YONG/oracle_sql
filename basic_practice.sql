-- 1) 
select *
from employees;
select first_name || ' ' || last_name as name, salary as sal, phone_number as num , hire_date
from employees;

-- 2)
select * from tab;
select * from jobs;
select * from employees;

select count(*) from employees;
select emp.job_id, job.job_title, max(emp.salary) max_sal
from employees emp,  jobs job
where emp.job_id = job.job_id
group by emp.job_id, job.job_title
order by max_sal DESC;

select job_id, job_title, max(salary)
from employees
group by job_id;

select job_id, job_title, max_salary
from jobs
order by max_salary DESC;

-- 3)
select * from employees;
select first_name || ' ' || last_name name, employee_id, commission_pct, salary
from employees
where salary > 3000 and commission_pct is null and manager_id is not null;

-- 4)
select * from employees;
select job.job_title, a.max_salary
from (select max(salary) max_salary, job_id
from employees
group by job_id
having max(salary) > 10000) a, jobs job
where job.job_id = a.job_id;

-- 5)
select * from employees;
select first_name, salary, nvl(commission_pct, 0)
from employees
where salary between 10000 and 14000
order by salary DESC;

-- 6)
select * from employees;
select first_name, salary, to_char(hire_date, 'YYYY/MM'), department_id
from employees
where department_id in (10, 90, 100);

-- 7)
select  first_name, salary
from employees
where first_name like  ('%S%') or first_name like ('%s%');

-- 8)
select * from tab;
select * from departments;
select  department_name
from departments
group by department_name
order by  length(department_name) Desc;

-- 9)
select * from tab;
select country_name from countries
order by country_name;

--10)
select phone_number
from employees;
DESC employees;
select first_name, salary, replace(phone_number, '.', '-'), hire_date
from employees
where hire_date < '03/12/31';