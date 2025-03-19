-- ******           CONDITIONAL STATEMENTS          ******

-- ****  IF STATEMENT **** --

DECLARE
    variable1 number := 15;
BEGIN
    if variable1 >20 then
            dbms_output.put_line('number is greater than 20');
    end if;
END;

-- **** IF ELSE STATEMENT ****

DECLARE
    marks number:= 40;
BEGIN
    if marks > 37 then
        dbms_output.put_line('pass');
    else 
        dbms_output.put_line('fail');
    end if;
END;

-- **** IF ELSIF STATEMENT ****

DECLARE
    marks number:=75;
BEGIN
    if marks>=90 then 
        dbms_output.put_line('Grade : A');
    elsif marks>=80 then 
        dbms_output.put_line('Grade : B');
    elsif marks>=70 then 
        dbms_output.put_line('Grade : C');
    ELSE
        dbms_output.put_line('Grade : D');
    end if;
END;

-- ****Rank salary of an employee as high medium low with id 101 ****

DECLARE
    emp_name VARCHAR2(20), emp_salary number,grade_value VARCHAR2(20);
BEGIN
    select first_name,salary into emp_name,emp_salary from hr.employees where employee_id = 101;
    if emp_salary>=80000 then
        grade_value:='high';
    elsif emp_salary<50000 then 
        grade_value:='medium';
    ELSE
        grade_value:='low';
    end if;
    dbms_output.put_line(emp_name || ' ' || emp_salary || ' ' || grade_value);
END; 

-- **** NESTED IF STATEMENT **** 

DECLARE
    emp_name varchar2(20) := 'john',emp_salary number:=25000, grade_value varchar2(20);
BEGIN
    if emp_salary > 30000 then 
        grade_value := 'high';
        if emp_salary > 70000 then
            grade_value:=' very high';
        else 
            grade_value:= ' very high salary';
        end if;
    ELSE
        grade_value:='low';
    dbms_output.put_line('employeee: ' || emp_name || 'salary: ' || emp_salary|| ' grade: ' || grade_value);
END;