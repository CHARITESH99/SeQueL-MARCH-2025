-- select * from hr.EMPLOYEES
-- //gives all the rows and columns from the emp table

-- select count(*) from hr.EMPLOYEES
-- //gives total number of rows in emp table

-- select 'data' from DUAL
-- // it is dummy table with one row and column

-- // Arithmetic operators +,-,*,/
-- select 10+5 as addition,
-- 10-5 as subtraction,
-- 10*5 as multiplication,
-- 10/5 as division
-- from DUAL

-- // Comparision Operators <,>,<=,>=,<>,=
-- select * from hr.EMPLOYEES where SALARY<15000;
-- select * from hr.EMPLOYEES where SALARY>20000;
-- select * from hr.EMPLOYEES where SALARY<=15000;
-- select * from hr.EMPLOYEES where SALARY>=20000;
-- select * from hr.EMPLOYEES where SALARY<>24000;
-- select * from hr.EMPLOYEES where SALARY=9000;

-- // Logical Operators ( and, or, not)
-- select * from hr.EMPLOYEES where SALARY>23000 and DEPARTMENT_ID =60
-- //and operator both the conditions should be satisfied

-- select * from hr.EMPLOYEES where SALARY>15000 or DEPARTMENT_ID = 90
-- //or operator even one condition satisfied it executes

-- select * from hr.EMPLOYEES where not DEPARTMENT_ID = 60
-- //not operator except 60 all other dept ids are given

-- select FIRST_NAME || ' ' || LAST_NAME as FULL_NAME from hr.EMPLOYEES
-- // Concatenation operator(||) - adds two strings

-- // Betweeen operator
-- select * from hr.EMPLOYEES where SALARY BETWEEN 10000 and 25000
-- // between opeartor range is inclusive both upper and lower range is included

--  select 20 BETWEEN 10 and 30 as output from DUAL
-- // it gives true value as 20 is between 10 and 30

-- // in operator 
-- select * from hr.EMPLOYEES where DEPARTMENT_ID in (60,90,100)
-- it gives all the rows with 60,90,100 department ids

-- // like operator 
-- select * fromm hr.EMPLOYEES where FIRST_NAME like 'N%'
-- // it gives all the names starting with capital N and % means any number of letters

-- select * from hr.EMPLOYEES where FIRST_NAME like '%s'
-- // it gives all the names ending with letter 's'

-- select * from hr.EMPLOYEES where FIRST_NAME like '%am%'
-- // it gives all the names which contains 'am'

-- select * from hr.EMPLOYEES where FIRST_NAME like '____'
-- // it gives names that contain only 4 characters or letters for 4 underscores
-- select * from hr.EMPLOYEES where FIRST_NAME like '___e%'
-- // it gives names that contain 3 characters or letters in front of 'e'
-- select * from hr.EMPLOYEES where FIRST_NAME like 'N%a'
-- // it gives names that are starting with character 'N' and ending with 'a'


