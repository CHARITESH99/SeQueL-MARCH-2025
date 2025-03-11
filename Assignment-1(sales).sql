-- select * from sh.SALES;
-- select TIME_ID, TIME_ID+7 next_week from sh.sales;
-- select TIME_ID,extract(year from TIME_ID) years,extract(month from TIME_ID) months,extract(day from TIME_ID) days from sh.sales;
-- select TIME_ID,last_day(TIME_ID) last_date from sh.sales;


-- select count(*) Total_Transactions from sh.sales;
-- select DISTINCT PROD_ID from sh.SALES;  
-- select * from sh.sales where QUANTITY_SOLD=1;
-- select  SUM(QUANTITY_SOLD*AMOUNT_SOLD) TOTAL_REVENUE from sh.SALES;
-- select QUANTITY_SOLD*AMOUNT_SOLD TOTAL_REVENUE from sh.SALES;
-- select AVG(AMOUNT_SOLD) AVERAGE_SALE from sh.sales;
-- top 5 highest sales based on amount 
-- select * from sh.sales where CUST_ID like '1001';
-- select PROD_ID, count(*) from sh.sales group by PROD_ID
-- select count(distinct cust_id) from sh.sales 

-- *** ----TIME FUNCTIONS---- ***

-- select * from sh.sales where TIME_ID BETWEEN (sysdate) AND (sysdate-30);
-- select TIME_ID extract(year from TIME_ID) years from sh.SALES;
-- select TIME_ID extract(month from TIME_ID) months from sh.sales;
-- select extract(month from TIME_ID) months, SUM(AMOUNT_SOLD) total_sales from sh.sales Group by months Order by months;
-- select MIN(TIME_ID) firts_date,MAX(TIME_ID) last_date from sh.sales;
-- select (MAX(TIME_ID) -  MIN(TIME_ID)) No_of_days from sh.sales;
-- select * from sh.sales where convert(varchar,TIME_ID,23) LIKE '2019-01-2';


