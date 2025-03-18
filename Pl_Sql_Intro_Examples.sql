-- 1 Simple SELECT INTO Statement --

DECLARE
    emp_email varchar2(20); 
BEGIN
    select EMAIL into emp_email from hr.employees where employee_id = 101;
    dbms_output.put_line(emp_email);
END;

-- 2  SELECT Multiple Columns INTO Variables --
DECLARE 
    emp_salary number,emp_job_id number,emp_name varchar2(50);
BEGIN
    select first_name,salary,job_id into emp_name,emp_salary,emp_job_id from hr.employees where employee_id = 101;
    dbms_output.put_line('Employee  '|| emp_name|| ' Employee salary  '|| emp_salary||' Employee Job id  '|| emp_job_id);
END;

-- 3 Handling No Data Found Exception --

DECLARE
    emp_salary number, emp_name varchar2(50); 
BEGIN
    select salary, first_name into emp_salary,emp_name from hr.employees where employee_id = 101;
    DBMS_OUTPUT.PUT_LINE(emp_salary||emp_name);
EXCEPTION 
    WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('No employee found with this id ');
END;

-- 4  Using SELECT with CASE Statement

DECLARE
    emp_status varchar2(50); 
BEGIN
    select CASE WHEN salary>10000 THEN 'HIGH' ELSE 'LOW' END into emp_status from hr.employees where employee_id = 101;
    dbms_output.put_line(emp_status);
END;

-- 5 Using COUNT() with SELECT INTO

DECLARE
    num_of_rows number;
BEGIN
    select count(*) into num_of_rows from hr.employees;
    dbms_output.put_line(num_of_rows);
END;

--  6,7,8,14 Fetching MAX,MIN,AVG,SUM Salary

DECLARE
    maximum_sal number, minimum_sal number, average_sal number, sum_salary number;
BEGIN
    select max(salary),min(salary),avg(salary),sum(salary) into maximum_sal,minimum_sal,average_sal,sum_salary from hr.employees;
    dbms_output.put_line('maximum_salary ' ||maximum_sal|| ' minimum_salary ' || minimum_sal || ' average_salary ' || average_sal || ' sum_of_salary ' || sum_salary);
END;

--  9 Fetching Employee Name Using Subquery

DECLARE
    emp_name varchar2(50);
BEGIN
    select first_name into emp_name from hr.employees where employee_id =
    (select min(employee_id) from hr.employees);
    dbms_output.put_line(emp_name);
END;

--  10 Fetching Data Using EXISTS

DECLARE
    emp_exists varchar2(10);
BEGIN
    select CASE WHEN EXISTS(select 1 from hr.employees where employee_id = 105) THEN 'YES' ELSE 'NO' END into emp_exists;
    DBMS_OUTPUT.PUT_LINE(emp_exists);
EXCEPTION 
    WHEN NO_DATA_FOUND THEN 
    DBMS_OUTPUT.PUT_LINE('NO');
END;

--  11 Selecting Employee with Highest Salary

DECLARE
    emp_name varchar2(20);
BEGIN
    select first_name into emp_name from hr.employees where salary = 
    (select max(salary) from hr.employees);
    dbms_output.put_line(emp_name);
END;

--  12  Fetching Department Name

DECLARE
    Dept_name varchar2(20);
BEGIN
    select Department_name into Dept_name from hr.departments where department_id = 20;
    dbms_output.put_line(Dept_name);
END;

-- 13 Fetching Employee Count in a Department

DECLARE
    no_of_emp_in_dept number;
BEGIN
    select count(*) into no_of_emp_in_dept from hr.employees where department_id = 10;
    dbms_output.put_line(no_of_emp_in_dept);
END;

--  15  Fetching Employee Joining Date

DECLARE
    emp_hire_date date;
BEGIN
    select hire_date into emp_hire_date from hr.employees where employee_id = 101;
    dbms_output.put_line(emp_hire_date);
END;

-- 16 Selecting Second Highest Salary

DECLARE
    second_highest_sal number; 
BEGIN 
    select DISTINCT salary into second_highest_sal from hr,employees 
    where salary < (select max(salary) from hr.employees)
    order by salary desc FETCH FIRST 1 ROW ONLY;
    dbms_output.PUT_LINE(second_highest_sal);
END;

-- 17 Selecting Employees with Same Salary as John

DECLARE
    emp_count number;
BEGIN
    select count(*) into emp_count from hr.employees where salary = 
    (select salary from hr.employees where first_name = 'John');
    dbms_output.PUT_LINE(emp_count);
END;

-- 18 Fetching Manager Name of an Employee

DECLARE
    manager_name varchar(20); 
BEGIN
    select first_name into manager_name from hr.employees where employee_id = 
    (select MANAGER_ID from hr.employees where employee_id = 110 );
    dbms_output.put_line(manager_name);
END;

-- 19 Fetching Number of Employees Who Earn Above Average Salary

DECLARE
    no_of_emp number;
BEGIN
    select count(*) into no_of_emp from hr.employees where salary >
    (select avg(salary) from hr.employees);
    dbms_output.put_line(no_of_emp);
END;

-- 20 Fetching Employee Name and Role

DECLARE
    emp_name varchar2(20), emp_role varchar2(20);
BEGIN
    select employees.first_name,jobs.job_title into emp_name, emp_role 
    from hr.employees 
    join hr.jobs 
    on employees.job_id = jobs.job_id 
    where employees.employee_id = 105;
    dbms_output.put_line('name: '||emp_name|| ' role: ' || emp_role);
END;
