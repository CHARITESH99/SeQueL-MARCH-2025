-- ****sysdate functions****

-- select sysdate from dual;
-- select systimestamp from dual;
-- select dbtimezone from dual;
-- select sysdate,sysdate+7 next_week from dual;
-- select sysdate, sysdate-14 previous_week from dual;

-- ***systimestamp functions ----INTERVAL---- ***

-- select systimestamp, systimestamp+INTERVAL '3' HOUR hours from dual;
-- select systimestamp, systimestamp+INTERVAL '4' minute minutes from dual;
-- select systimestamp, systimestamp+INTERVAL '45' SECOND seconds from dual;
-- select systimestamp, systimestamp+INTERVAL '2' year years from dual;
-- select systimestamp, systimestamp+INTERVAL '5' month months from dual;
-- select systimestamp, systimestamp+INTERVAL '4' day days from dual;

-- *** EXTRACT ***
-- select sysdate,EXTRACT(year from sysdate) years, EXTRACT(month from sysdate) months,EXTRACT(day from sysdate) days from dual;

-- select sysdate, last_day(sysdate) last_date from dual;
-- select sysdate,next_day(sysdate, 'wednesday') next_date from dual;
-- select to_Char(sysdate,'day') from dual;

-- **** NULL based functions and COALESCE ****

-- select null from dual;
-- select 'data' from dual;
-- select nvl(null,30) from dual;
-- select nvl2(expression,value if not null,value if null) from dual;
-- select nvl2(null,15,10) from dual;
-- select coalesce(null,null,2220,0) from dual;
-- select coalesce(hire_date,sysdate) from hr.EMPLOYEES;
-- if hire_date available it will be used or else sysdate will used
-- select coalesce(commision,bonus,0) from hr.employees;
-- commission not null as it is, bonus not null as it is, if null 0 will be replaced.








