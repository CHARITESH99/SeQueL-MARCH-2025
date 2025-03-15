--     *************   BASIC JOINS ***********

-- 1 Gives all sales transactions along with customer names
select sales.prod_id, customers.first_name,customers.last_name
from sh.SALES
join sh.customers 
on sales.cust_id = customers.cust_id;

-- 2 Gives all sales transactions along with product details
select sales.cust_id, products.prod_name,products.prod_category
from sh.sales 
join sh.PRODUCTS
on sales.prod_id = products.prod_id;

-- 3 Gives all sales transactions along with store location details.
select sales.prod_id,customers.first_name,customers.last_name,countries.country_name
from sh.sales
join sh.CUSTOMERS
on sales.cust_id = customers.cust_id
join sh.COUNTRIES
on customers.country_id = countries.country_id;

-- 4 Retrieve all sales transactions along with the sales representative handling them.

-- 5 gives all sales transactions along with customer and product details.
select sales.prod_id,sales.cust_id,products.prod_name,products.prod_category,customers.cust_first_name,customers.cust_last_name,customers.cust_city
from sh.sales 
join sh.CUSTOMERS on sales.cust_id = customers.cust_id
join sh.products on sales.prod_id = products.prod_id; 

-- 6 Gives all sales transactions along with the region they occurred in.
select sales.cust_id,customers.first_name,countries.country_subregion,countries.country_region,countries.country_region_id
from sh.sales 
join sh.customers on sales.cust_id = customers.cust_id
join sh.COUNTRIES on customers.country_id = countries.country_id;

-- 7 Gives all customers and their sales transactions, including those who have never made a purchase.
select sales.prod_id, sales.cust_id, customers.cust_first_name, customers.cust_last_name, customers.cust_gender
from sh.sales 
right join sh.customers on sales.cust_id = customers.cust_id;

-- 8 Gives all products and their sales, including those that have never been sold.
select sales.prod_id, products.prod_name,products.prod_subcategory,products.prod_category
from sh.sales 
right join sh.products on sales.prod_id = products.prod_id;

-- 9 Gives all stores and their sales transactions, including stores without sales.
-- 10 Gives all sales transactions along with payment method details.

--  **********   ADVANCED JOINS **********

--  11 Gives all customers who have purchased more than one product.
select sales.cust_id,customers.cust_first_name,customers.cust_last_name,COUNT(DISTINCT sales.prod_id) total_products_purchased
from sh.sales
join sh.CUSTOMERS on sales.cust_id = customers.cust_id
group by sales.cust_id, customers.cust_first_name, customers.CUST_LAST_NAME
having COUNT(DISTINCT sales.prod_id)>1;

-- 12 Gives all products that have been purchased by more than one customer.
select sales.prod_id, products.prod_name, products.prod_subcategory, COUNT(DISTINCT SALES.cust_id) TOTAL_CUSTMERS_PURCCHASED
from sh.sales 
join sh.products on sales.prod_id = products.prod_id
group by sales.prod_id, products.prod_name,products.prod_subcategory
having  COUNT(DISTINCT SALES.cust_id) >1;

-- 13 Retrieve all stores that have recorded more than 100 transactions.
-- 14 Gives all customers and their most recent purchase.

-- 15 Gives all customers who have made a purchase in multiple regions.
select sales.cust_id, customers.cust_first_name, customers.cust_last_name,COUNT(DISTINCT countries.country_region) total_regions
from sh.sales
join sh.customers on sales.cust_id = customers.cust_id
join sh.countries on customers.country_id = countries.country_id
group by sales.cust_id,customers.cust_first_name,customers.cust_last_name
having COUNT(DISTINCT countries.country_region)>1;

-- 16 Gives all customers who have purchased the same product more than once
select sales.cust_id, sales.prod_id, customers.cust_first_name,customers.cust_last_name, count(*) count_of_purchases
from sh.sales
join sh.customers on sales.cust_id = customers.cust_id
group by sales.cust_id,sales.prod_id, customers.first_name,customers.cust_last_name
having count(*)>1;

-- 17 Gives all products along with the names of the customers who bought them.
select sales.prod_id, sales.cust_id, products.prod_name, products.prod_subcategory, products.prod_category, customers.cust_first_name, customers.cust_last_name, customers.cust_city 
from sh.products
left join sh.sales on products.prod_id = sales.prod_id
left join sh.customers on sales.cust_id  = customers.cust_id

-- 20 Gives all regions along with the total sales generated.
select customers.cust_id, countries.country_id, countries.country_region, coalesce(sum(sales.amount_sold),0) total_sales
from sh.countries           
left join sh.customers on countries.country_id = customers.country_id
left join sh.sales on customers.cust_id = sales.cust_id
group by customers.cust_id, countries.country_id, countries.country_region
order by total_sales;
   
--        ************ COMPLEX JOINS ***************

-- 23 Gives all customers along with the total amount they have spent.

select customers.cust_id, customers.cust_first_name, customers.cust_last_name, coalesce(sum(sales.amount_sold),0) total_amount_spent
from sh.customers
left join sh.sales on customers.cust_id = sales.cust_id
group by customers.cust_id, customers.cust_first_name, customers.cust_last_name;

-- 30 Gives all customers who have made a purchase but have not returned to buy again.

select customers.cust_id,customers.cust_first_name,customers.cust_last_name, count(sales.cust_id) total_products
from sh.customers
left join sh.sales on customers.cust_id = sales.cust_id
group by customers.cust_id, customers.cust_first_name, customers.cust_last_name
having count(sales.cust_id) = 1;



