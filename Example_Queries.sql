-- ** 1 **
select department_id, count(*) from hr.employees group by DEPARTMENT_ID;
-- ** 2,3,4,5 **
select DEPARTMENT_ID, sum(salary), avg(SALARY), min(SALARY), max(SALARY) from hr.EMPLOYEES group by DEPARTMENT_ID;
-- ** 6 **
select job_id, count(*) from hr.EMPLOYEES group by job_id;
--  ** 7,8 **
select job_id, sum(salary),avg(salary) from hr.EMPLOYEES group by JOB_ID;
-- ** 9 ** 
select DEPARTMENT_ID, count(*) from hr.EMPLOYEES group by DEPARTMENT_ID having count(*)>5;
-- ** 10 ** 
select DEPARTMENT_ID, sum(salary) from hr.EMPLOYEES group by DEPARTMENT_ID having sum(salary)>100000;
-- ** 11 ** 
select department_id, avg(salary) from hr.EMPLOYEES group by DEPARTMENT_ID having avg(salary)>50000;
-- ** 12 ** 
select department_id, MAX(salary) from hr.EMPLOYEES group by DEPARTMENT_ID having max(SALARY)>80000;
-- ** 13 **
select department_id, MIN(salary) from hr.EMPLOYEES group by DEPARTMENT_ID HAVING min(salary)<30000;
-- ** 14 ** 
select department_id, count(*) from hr.EMPLOYEES group by DEPARTMENT_ID having count(*) between 5 and 10;
-- ** 15 ** 
select DEPARTMENT_ID, VARIANCE(salary) from hr.EMPLOYEES group by DEPARTMENT_ID having variance(salary)>500000;
-- ** 16 ** 
select DEPARTMENT_ID, STDDEV(salary) from hr.EMPLOYEES group by DEPARTMENT_ID having STDDEV(salary)>5000;
-- ** 17 **
select employee_id, firts_name, salary from hr.employees order by salary;
-- ** 18 ** 
select department_id, first_name,SALARY,employee_id from hr.employees  order by DEPARTMENT_ID desc,EMPLOYEE_ID asc;
-- ** 19 **
select last_name, employee_id from hr.EMPLOYEES order by last_name asc;
-- ** 20 ** 
select  firts_name, employee_id, hire_date from hr.EMPLOYEES order by hire_date ASC;
-- ** 21, 22 ** 
select first_name, employee_id, commissin_pct from hr.EMPLOYEES order by COMMISSION_PCT NULLS LAST;
-- ** 23 ** 
select employee_id from hr.employees order by length(FIRST_NAME) ASC;
-- ** 24 ** 
select first_name, last_name, employee_id from hr.EMPLOYEES order by SUBSTR(LAST_NAME,-2) ASC;
-- ** 25 ** 
select employee_id, UPPER(first_name) upper_name from hr.EMPLOYEES order by upper_name ASC;
-- ** 26 ** 
select employee_id, first_name, salary from hr.EMPLOYEES order by (salary+700) ASC;
-- ** 27 ** 
select employee_id, first_name, last_name, job_id from hr.EMPLOYEES order by JOB_ID ASC, LAST_NAME ASC;
-- ** 28 ** 
select employee_id, department_id, first_name, last_name from hr.EMPLOYEES order by DEPARTMENT_ID ASC,FIRST_NAME ASC;
-- ** 29 ** 
select employee_id, first_name, job_id from hr.EMPLOYEES order by CASE WHEN job_id = 'IT_PROG' THEN 1 ELSE 2 END;
-- ** 30 ** 
select employee_id, first_name, salary from hr.EMPLOYEES order by CASE WHEN salary >5000 THEN 1 ELSE 2 END, salary DESC;
-- ** 31 ** 
select department_id, sum(salary) from hr.EMPLOYEES group by DEPARTMENT_ID order by SUM(salary) between 50000 and 200000
-- ** 32 ** 
select DEPARTMENT_ID, max(salary), min(salary) from hr.employees group by department_id order by max(salary)>=2*min(salary);
-- ** 33 ** 
select first_name, employee_id, department_id from hr.employees order by CASE WHEN department_id=  50 THEN 1 ELSE 2 END, department_id ASC;
-- ** 34 ** 
select department_id, max(salary)/avg(salary) salary_ratio from hr.employees group by department_id having MAX(salary)/AVG(salary) > 1.5 order by salary_ratio DESC;
-- ** 35 ** 
select first_name, job_id, salary from hr.EMPLOYEES order by job_id ASC,salary DESC;
-- ** 36 ** 
select employee_id, first_name, commission_pct from hr.EMPLOYEES order by COMMISSION_PCT desc NULLS LAST;
-- ** 37 ** 
select employee_id, first_name, salary, commissin_pct from hr.employees order by CASE WHEN commissin_pct IS null THEN 2 ELSE 1 END, salary DESC;
-- ** 38 already done ** 
-- ** 39 Doubt ** 
-- ** 40 ** 
select department_id, SUM(CASE WHEN job_id IN('IT_PROG','HR_REP') THEN salary ELSE 0 END) AS it_hr_salary from hr.employees group by department_id having sum(CASE WHEN job_id IN('IT_PROG','HR_REP')THEN salary ELSE 0 END)>= 80000;



--    **********   BASIC AGGREGATE FUNCTIONS **********   --

-- ** 1 ** 
select count(*) from hr.employees;
-- ** 2 ** 
select count(distinct job_id) from hr.employees;
-- ** 3,4,5,6,7,9,10 ** 
select sum(salary) total_salary,AVG(salary) avg_salary, MIN(salary) min_salary, max(salary) max_salary, median(salary) med_salary, variance(salary) var_salary, STDDEV(salary) std_salary from hr.employees;
-- ** 8  mode doubt ** 

-- ********** AGGREGATE FUNCTIONS WITH GROUP BY ********** --

-- ** 11 ** 
select department_id, count(*) from hr.employees group by department_id;
-- ** 12,13,14,15 ** 
select department_id, sum(salary), AVG(salary), MIN(salary), MAX(salary) from hr.employees group by department_id;
-- ** 16 ** 
select job_id, count(*) from hr.employees group by job_id;
-- ** 17 ** 
select department_id, sum(salary) from hr.employees group by department_id having sum(salary)>100000;
-- ** 18 ** 
select department_id, avg(salary) from hr.employees group by department_id having avg(salary)>50000;
-- ** 19 ** 
select department_id, count(*) from hr.employees group by department_id having count(*)>=5;
-- ** 20 ** 
select job_id, count(*) from hr.employees group by job_id having count(*)>10;


--  ********** ORDER BY WITH AGGREGATE AND ANALYTICAL FUNCTIONS **********     --

-- ** 31 ** 
select employee_id,salary from hr.employees order by salary DESC;
-- ** 32 ** 
select FIRST_NAME, employee_id,department_id, salary from hr.employees order by department_id ASC, salary DESC;
-- ** 33 ** 
select FIRST_NAME, employee_id, last_name from hr.employees order by last_name ASC;
-- ** 34 ** 
select first_name, employee_id, hire_date from hr.employees order by hire_date ASC;
-- ** 35 ** 
select first_name.employee_id, last_name from hr.employees order by length(first_name)ASC;
-- ** 36 ** 
select first_name, last_name, employee_id from hr.employees order by SUBSTR(last_name,-2)ASC;
-- ** 37 **
select First_name, last_name, job_id from hr.employees order by CASE WHEN job_id='IT_PROG' THEN 1 ELSE 2 END;
-- ** 38 doubt **
-- ** 39 **
select employee_id, first_name, commission_pct from hr.employees order by COMMISSION_PCT DESC NULLS LAST;
-- ** 40 ** 
select employee_id, first_name, commission_pct from hr.employees order by CASE WHEN commission_pct IS NULL THEN 2 ELSE 1 END,salary DESC;  


--     **********    ANALYTICAL FUNCTIONS **********   --

-- ** 21 ** 
select first_name,last_name, employee_id, salary, ROWNUM() over(order by salary desc) rank_num from hr.employees;
-- ** 22 ** 
select first_name, last_name, employee_id, salary, rank() over(order by salary desc) salary_rank from hr.employees;
-- ** 23 ** 
select first_name,last_name, employee_id, salary, DENSE_RANK() over(order by salary desc) salary_dense from hr.employees;
-- ** 24 ** 
select first_name, employee_id, salary, NTILE(4) over(order by salary desc) quartile from hr.employees;
-- ** 25 ** 
select first_name,employee_id, salary, LAG(salary) over(order by salary) previous_salaryfrom hr.employees;
-- ** 26 ** 
select first_name, employee_id, salary, LEAD(salary) over(order by salary) next_salary from hr.employees;