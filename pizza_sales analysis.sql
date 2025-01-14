-- create database
Create DataBase proj1_db;

Use proj1_db;

-- data import 
select * from pizza_sales;

-- KPI 1 - total pizza sold ?
select sum(quantity) as total_pizz_sold from pizza_sales; # total pizza sold ?

-- KPI 2 - total revenue genrated?
select round(sum(total_price)) as total_revenue_genrated from pizza_sales; # total revenue

-- KPI 3 - total average price ?
select round(sum(total_price)/count(order_id),2) as avg_order_value from pizza_sales; # average price 

-- KPI 4 - top 5 performing pizza ?
select pizza_name,sum(quantity) as top_pizza_sold from pizza_sales group by pizza_name 
order by top_pizza_sold DESC limit 5 ;

-- KPI 5 - top 5 bottom performing pizza ?
select pizza_name,sum(quantity) as bottom_pizza_sold from pizza_sales group by pizza_name
order by bottom_pizza_sold ASC limit 5;

-- KPI 6 - top 5 performing pizza revenue genrated ?
select pizza_name, round(sum(total_price),1) as top_pizza_revenue from pizza_sales group by pizza_name
order by top_pizza_revenue desc limit 5;

-- KPI 7 - bottom 5 performing pizza revenue genrated ?
select pizza_name,round(sum(total_price),1) as bottom_pizza_revenue from pizza_sales group by pizza_name
order by bottom_pizza_revenue asc limit 5;

-- KPI 8 - 
select hour(order_time) as order_hours, sum(quantity) as total_hourly_pizza_sales from pizza_sales
group by hour(order_time) order by hour(order_time) ;

-- KPI 9 - monthly sales ?
select month(order_date) as order_date, sum(quantity) as total_monthly_pizza_sales from pizza_sales
group by month(order_date) order by month(order_date); 
