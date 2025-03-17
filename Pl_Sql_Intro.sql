-- DECLARE
--     student_name varchar2(50):= 'cherry';
-- BEGIN
--     DBMS_OUTPUT.PUT_LINE('Hello '||student_name);
-- END;

-- **************   Data Types *******************
--  NUMBER : NUMBER(10), NUMBER(10,2)
--  varchar2 : mix numbers and characters
--  True False 
-- Date, Time, Timestamp
-- record()

-- DECLARE
--     type emp_record is record(
--         emp_id number, emp_name varchar(20), emp_salary number(10,2));
--         emp emp_record;
-- BEGIN
--     emp.emp_name:='cherry';
--     emp.emp_id:= 100;
--     emp.emp_salary:= 100000;
--     DBMS_OUTPUT.PUT_LINE(emp.emp_name || ' ' || emp.emp_id || ' '|| emp.emp_salary );
-- END;

-- select first_name from hr.employees where employee_id = 101;

-- DECLARE
--     emp_name varchar(20);
--     emp_salary number;
-- BEGIN
--     select first_name into emp_name, salary into emp_salary from hr.employees where employee_id = 101;
--     DBMS_OUTPUT.PUT_LINE(emp_name||' '||emp_salary);
-- END;

-- if we are using a case statment or any condition 

-- DECLARE
--     emp_status varchar(20);
-- BEGIN
--     select case when salary>40000 then 'HIGH' else "LOW" END
--     into emp_status  from hr.employees where EMPLOYEE_ID = 101;
--     dbms_output.PUT_LINE(emp_status);
-- END;

-- calculating number of rows 
-- DECLARE
--     num_of_rows number;
-- BEGIN
--     select count(*) into number_of_rows from hr.employees;
--     dbms_output.put_line(number_of_rows);
-- END;

-- ** Range max-min**
-- DECLARE 
--     range_of_sal number;
-- BEGIN
--     select max(salary) - min(salary) into range_of_sal from hr.employees;
--     dbms_output.put_line(range_of_sal);
-- END;

-- ** for loop / output = 1 2 3 4 5** 
-- BEGIN 
--     for i in 1...5 loop
--         dbms_output.put_line(i);
--     end loop;
-- END;

-- ** while loop/ output 1 2 3 4 ** 

-- DECLARE 
--     x number:=1;
-- BEGIN
--     while i<5 loop
--         dbms_output.put_line(i);
--         x := x+1;
--     end loop;
-- END;
