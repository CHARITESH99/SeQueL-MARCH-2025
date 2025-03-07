-- // String functions or character based functions

select lower('DATA SCIENCE') lname from dual;
select upper('data science') uname from dual;
select length('data sceince') length from dual;
select initcap('data science') init_name from dual;
select trim('  data science   ') trim_name from dual;
select ltrim('    data science') ltrim from dual;
select rtrim(' data science    ') rtrim from dual;
select lpad('data science','20','**') lpad from dual;
select rpad('data science','18','**') rpad from dual;
select replace('data science','science','engineering') replace from dual;


