-- SQL Retail Sales Analysis

-- Create Database
CREATE DATABASE IF NOT EXISTS retail_db;

-- use database
USE retail_db;

-- Create Table
CREATE TABLE IF NOT EXISTS retail_sales (
			transaction_ID INT PRIMARY KEY,
            sales_date DATE,
            sales_time TIME,
            customer_ID INT,
            gender VARCHAR(10),
            age INT,
		    category VARCHAR(40),
            quantity INT,
            price_per_unit FLOAT,
            cogs FLOAT,
            total_sale FLOAT      
            );
 
-- Check Data
SELECT * FROM retail_saLES;
   
--             ========================================================
--                           Data Exploration & Cleaning
--             ========================================================

-- DATA CLEANING

SELECT * FROM retail_sales
WHERE  transaction_id  IS NULL;

SELECT * FROM retail_sales
WHERE sales_date IS NULL;

SELECT * FROM retail_sales
WHERE sales_time IS NULL 
OR
customer_ID IS NULL
OR
gender IS NULL
OR
age IS NULL
OR 
category IS NULL
OR 
quantity IS NULL
OR 
price_per_unit IS NULL 
OR 
cogs IS NULL
OR 
total_sale IS NULL;


DELETE
FROM retail_sales
WHERE
transaction_id IS NULL
OR 
sales_date IS NULL
OR 
sales_time IS NULL 
OR
customer_ID IS NULL
OR
gender IS NULL
OR
age IS NULL
OR 
category IS NULL
OR 
quantity IS NULL
OR 
price_per_unit IS NULL 
OR 
cogs IS NULL
OR 
total_sale IS NULL;

 --  DATA EXPLORATION
 
 -- How many sales we have?
 SELECT COUNT(*) AS "Total Sales" FROM retail_Sales;
 
-- How many unique customer in this data?
SELECT 
         COUNT(DISTINCT customer_id) AS " Unique Customers" 
FROM retail_sales;

-- How many unique category we have?
SELECT
      DISTINCT category
FROM retail_sales;

-- how many total sale we have?
SELECT 
    SUM(total_sale) as "Total Sales" 
FROM retail_sales;


--        ==========================================
--       	       Data Analyis
--        =========================================
/* 
          Q1. Write a SQL query to retrive all columns for sales
                made on '2022-11-05'?
*/
select * from retail_sales;
SELECT *
FROM retail_sales
WHERE sales_date ='2022-11-05';

/* 
    Q2. Write a SQL query to retrive all transaction where
    the category is 'Clothing' and the quantity sold is more then 4 
    in the month of Nov-2022?
*/
     SELECT 
           Category, SUM(quantity)
	 FROM retail_sales
          WHERE Category = 'Clothing'
          And TO_CHAR (sals_date,'YYYY-MM') ='2022-11'
          GROUP BY 1;
/* 
   Q3. Write a sql query to calculate the total sales for each category?
*/
SELECT category,SUM(total_sale) AS net_sale,
COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category;

/* 
   Q4.  Write a sql query to fiend the average age of customer wh purchased items
   from the 'Beauty' Category?
   */
SELECT AVG(age) AS avg_age
FROM retail_sales
WHERE category = 'Beauty';

/*
   Q5.  Write a SQL query to find all transaction where the total sale is grater then 1000.
*/
SELECT * FROM retail_sales
         WHERE total_sale > 1000;
         
/*
      Q6.  Write a SQL query to find the total number of transactions made
			by each gender in each category?
*/
    SELECT gender, category,
          COUNT(transaction_id) AS total_trans
	FROM retail_sales
    GROUP BY gender, category
	ORDER BY total_trans;
    
/*
    Q.7 Write a SQL query to calculate the average sale for each month. Find out best 
    selling month in each year?
*/
      SELECT 
             YEAR(sale_date) AS year,
             MONTH (sale_date) AS month,
             ROUND (AVG(total_sale),2) AS avg_sale
	 FROM retail_sales
     GROUP BY year, month
     ORDER BY avg_sale DESC;



/*
	Q.8 Write a SQL query to find the top 5 customers based on the highest total sales.
*/

SELECT 
    customer_id, 
    SUM(total_sale) AS total_sales
FROM
    retail_sales
GROUP BY 
	customer_id
ORDER BY 
	total_sales DESC
LIMIT 5;


/*
	Q.9 Write a SQL query to find the number of unique customers who purchased items from 
    each category.
*/

SELECT 
    category, 
    COUNT(DISTINCT customer_id) AS unique_customers
FROM
    retail_sales
GROUP BY 
	category;
    
    


