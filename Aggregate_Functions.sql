select * from hr.EMPLOYEES;
select count(*) from hr.EMPLOYEES;
select count(department_id),count(distinct department_id) from hr.EMPLOYEES;

   -- **** Descriptive Statistics or Aggreate Functions **** ----

select avg(salary), min(salary), max(salary), median(salary), stddev(salary), variance(salary) from hr.EMPLOYEES;
select department_id,count(*) from hr.employees group by department_id;
select department_id, avg(salary) from hr.employees group by department_id;
select department_id, count(distinct job_id) unique_job_id from hr.EMPLOYEES group by DEPARTMENT_ID;
select department_id, 
SUM(salary) total_salary,
MAX(salary)  maxi_salary,
MIN(salary) mini_salary,
AVG(salary)  avge_salary,
STDDEV(salary) std_salary,
VARIANCE(salary) var_salary
from hr.EMPLOYEES
group by DEPARTMENT_ID;
select department_id, count(*) from hr.EMPLOYEES group by DEPARTMENT_ID having count(*)>=3;
select department_id, avg(salary) from hr.EMPLOYEES group by DEPARTMENT_ID having avg(salary)>1000;
select department_id, count(distinct job_id) from hr.employees group by DEPARTMENT_ID having count(distinct job_id)>=3;
select department_id, salary from hr.employees order by salary desc;
select department_id, sum(salary)
from hr.EMPLOYEES
group by DEPARTMENT_ID 
having sum(salary)>100000
order by sum(salary) ASC;


