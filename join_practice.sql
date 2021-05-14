--1)
select * from tab;

select * 
from employees;
select * 
from departments;

select employee_id, first_name, last_name, department_name
from employees emp, departments dep
where emp.department_id = dep.department_id
order by dep.department_name, emp.department_id DESC;

-- 2-1)
select * from employees;
select * from jobs;
select * from departments;

select employee_id, first_name, salary, department_name, job_title
from employees emp, jobs j, departments dept
where emp.job_id = j.job_id and emp.department_id = dept.department_id
order by emp.employee_id;

-- 2-2)
select employee_id, first_name, salary, department_name, job_title
from employees emp, jobs j, departments dept
where emp.job_id = j.job_id(+) and emp.department_id = dept.department_id(+)
order by emp.employee_id;

-- 3-1)
select * from tab;
DESC countries;

select * from departments;
select * from locations;
select * from countries;

select ctr.country_id, ctr.country_name, dept.department_id, loc.location_id
from countries ctr, locations loc, departments dept
where ctr.country_id = loc.country_id and loc.location_id = dept.location_id
order by dept.location_id;


-- 3-2)
select ctr.country_id, ctr.country_name, dept.department_id, loc.location_id
from countries ctr, locations loc, departments dept
where ctr.country_id = loc.country_id and loc.location_id = dept.location_id(+)
order by dept.location_id;

-- 4)
select * from tab;
select * from regions;
select * from countries;

select region_name, country_name
from countries ctr, regions reg
where ctr.region_id = reg.region_id
order by reg.region_name, ctr.country_name DESC;

-- 5)
select * from employees;

select e.employee_id, e.first_name, e.hire_date, m.first_name m_name, m.hire_date m_hire
from employees e, employees m
where e.manager_id = m.employee_id and
            e.hire_date < m.hire_date;
            
-- 6)
select * from tab;
select * from countries;
select * from locations;
select * from departments;

select ctr.country_name, ctr.country_id, dept.department_name, dept.department_id
from departments dept, countries ctr, locations loc
where dept.location_id = loc.location_id and
            loc.country_id = ctr.country_id
order by ctr.country_name;

-- 7)
select * from job_history;
select * from employees;

select emp.employee_id, emp.first_name, j_h.job_id, start_date, end_date
from employees emp, job_history j_h
where j_h.employee_id = emp.employee_id and
j_h.job_id = 'AC_ACCOUNT';
 
-- 8)
select * from employees; -- first_name, employee_id
select * from departments; -- manager_id, location_id
select * from locations; -- country_id city
select * from countries; --region_id, country id name
select * from regions; --region_name

select dept.department_id, department_name, first_name mgr, loc.city,country_name, region_name
from employees emp, departments dept, locations loc, countries ctr, region rg
where dept.manger_id = emp.employee_id;


select dept.department_id, emp.first_name, dept.department_name,
            loc.city, ctr.country_name, rg.region_name
from employees emp, departments dept, locations loc, countries ctr, regions rg
where dept.manager_id = emp.employee_id and
            dept.location_id = loc.location_id and
            loc.country_id = ctr.country_id and
            ctr.region_id = rg.region_id;
            
-- 9)   
select emp1.employee_id, emp1.first_name, emp2.first_name,
        dept.department_name
from employees emp1,  departments dept, employees emp2
where emp1.department_id = dept.department_id(+) and
            emp1.manager_id = emp2.employee_id(+);