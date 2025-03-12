-- ****** RANK(), DENSE_RANK(), ROW_NUM(), LAG(), LEAD() ********


select employee_id, first_name, salary, 
rank() over(order by salary desc) Rank_of_salary,
dense_rank() over(order by salary desc) Dense_rank_of_sal,
row_num() over(order by salary desc) row_number,
lag(salary) over(order by salary desc) previous_salary,
lead(salary) over(order by salary desc) next_salary
from hr.EMPLOYEES;


-- *** PARTITION BY **** 
SELECT employee_id,department_id,job_id,salary,
rank() over(PARTITION BY department_id,job_id order by salary DESC)
from hr.EMPLOYEES;

-- *******    INLINE QUERIES *******
select employee_id,salary from(select employee_id,salary from hr.employees where salary>5000);

-- *******    SUBQUERY(SCALAR SUBQUERY) ********
select employee_id from hr.employees where salary >(select avg(salary) from hr.employees)

-- *******    MULTI ROW SUBQUERY ********
select employee_id from hr.employees where department_id in (select department_id from hr.employees where employee_id = 101)

--  ******    COMMON TABLE EXPRESSION *******
with ranksalaries AS(
    select employee_id, department_id,salary,
    rank() over(partition by department_id order by salary) AS rk
    from hr.employees
)
select employee_id,department_id,salary from ranksalaries where rk = 1;
