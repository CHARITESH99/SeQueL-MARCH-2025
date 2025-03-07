-- // Numbers or Mathematical Functions 

select abs(-548) Absolute_Value from dual;
-- **retuens absolute value of a number means positive

select floor(12.546) Floor_Value from dual;
-- **returns largest integer value less than given num

select ceil(12.546) ceil_Value from dual;
-- **returns smallest integer value greater than given num

select round(12.3456,2) roundoff_value from dual;
-- **returns roundedoff value upto given num of decimal points

select round(12.5456,0) roundoff_value from dual;
-- **returns roundoff value without decimal points as integer value

select round(123456,-2) roundoff_value from dual;
-- **returns roundoff value  

select round(123456,-3) roundoff_value from dual;
-- **returns above query round offs to nearest 10;

-- select TRUNC(12.345,2) VALUE from dual;

select mod(12,5) rem_value from dual;
-- **returns remainder value, here 12 - divident and 5 is divisor

select power(5,2) power_value from dual;
-- **returns power_value, 5 - num to be raised, 2 - num by which it should be raised 

select sqrt(10) sqrt_value from dual;
-- **returns square root of the num

select sign(-3) sign_value from dual;
select sign(6) sign_value from dual;
select sign(0) sign_value from dual;
-- **returns sign_value of the number means either positive,negative, or zero

select greatest(10,20,-20) greatest_value from dual;
-- **returns greater value

select least(10,20,-10) lowest_value from dual;
-- **returns least value

select exp(1) expo_value from dual;
-- **returns expo value, e = 2.71828182
    
select exp(2) expo_value from dual;
-- **returns value that is e^1, 2.71828....^2

select ln(64) natural_logarithm_value from dual;
-- **returns natural_log value and it cannot be zero.if zero gives null

select LOG(10,100) logbase10_value from dual;
-- **returns value that is raised to the power of 10

select cos(0),sin(0),acos(1),asin(1),tan(1),atan(1)  from dual;