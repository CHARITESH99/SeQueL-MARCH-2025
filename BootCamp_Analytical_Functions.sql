-- ********* QUERIES ON ANALYTICAL FUNCTIONS *********

-- Uses RANK() to assign ranks based on salary in each department.
select employee_id, first_name, salary rank() over(partition by department_id order by salary DESC) rank_salary from hr.employees;

-- top 3 highest-paid employees in each department
select employee_id, first_name, salary from 
    (select employee_id, first_name, salary rank() over(partition by department_id order by salary DESC) rank_salary from hr.employees)
where rank_salary<=3;

-- DENSE_RANK() to identify employees with the second-highest salary per department.
select employee_id, department_id, salary from
    (select employee_id,department_id,salary dense_rank() over(partition by department_id order by salary DESC) salary_dense_rank from hr.employees)
where salary_dense_rank = 2;

-- cumulative total salary of employees ordered by hire date, Uses SUM() OVER() to create a running total of salaries.
select employee_id, hire_date ,salary sum(salary) over(order by hire_date) cmtv_sal from hr.employees;

-- ROW_NUMBER() to assign a unique row number per department.
select employee_id,department_id row_num() over(partition by department_id order by employee_id) row_number from hr.employees;

-- finds the salary difference between each employee and the next highest-paid employee.(LEAD() to compare an employee's salary with the next highest.)
select employee_id, salary, lead(salary) over (order by salary DESC) - salary salary_diff from hr.employees;

-- Calculates the previous month’s salary for each employee using LAG().LAG() to get the previous salary entry for each employee.
select employee_id, salary, hire_date, lag(salary) over (partition by employee_id order by hire_date) prev_salary from hr.employees

-- Identifies employees whose salaries increased over time.Uses LAG() to compare an employee's current and previous salaries.
Select employee_id, hire_date, salary, 
       lag(salary) over (partition by employee_id order by  hire_date) prev_salary,
       CASE WHEN salary > lag(salary) over(partition by employee_id order by hire_date) 
            THEN 'Increased' ELSE 'Decreased' END salary_trend
from employees;