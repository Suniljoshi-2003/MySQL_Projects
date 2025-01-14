# SQL Retail Sales Analysis
This project involves analyzing retail sales data stored in a relational database (retail_db). The data includes transactions, customer details, product categories, and sales figures. The project covers various stages of data management, including database creation, table creation, data cleaning, exploration, and analysis.

Project Structure:-

##Project Link 
[SQL Retail Sales Analysis Project](https://github.com/Suniljoshi-2003/MySQL_Projects/blob/main/Retail%20Sales%20Analysis.sql)

1.Database Creation
- retail_db: The main database for storing sales data.
  
2.Table Creation
- retail_sales: Contains sales transaction details such as transaction ID, date, customer ID, category, quantity, price, and total sale.

3.Data Cleaning
- Identified and handled missing or NULL values in key columns like transaction_id, sales_date, customer_ID, etc.
- Deleted rows with NULL values to maintain data integrity.
  
4.Data Exploration
- Explored basic statistics, such as total sales, unique customers, and distinct categories.
- Performed queries to check data completeness and consistency.
  
**SQL Queries and Analysis**

* Data Exploration:

Counted total sales, unique customers, and unique product categories.
Retrieved specific sales data for exploration by transaction date, category, and sales amount.
Data Analysis:

* Analyzed sales data to generate insights such as:

Total sales for each category.
Average age of customers purchasing from the 'Beauty' category.
Top customers based on total sales.
Sales performance for specific months and categories.





# Pizza Sales Data Analysis

**📌 Project Overview**

This project analyzes pizza sales data to extract meaningful insights and calculate key performance indicators (KPIs). The analysis includes total sales, revenue generation, and performance metrics of individual pizzas.

📂 Database Information
* Database Name: proj1_db
* Table Name: pizza_sales
* Table Columns: (Provide the main column names for reference, e.g., order_id, pizza_name, quantity, total_price, order_date, order_time)

🧩 Key Features
* Total Pizzas Sold: Calculate the total quantity of pizzas sold.
* Total Revenue: Determine the total revenue generated from pizza sales.
* Average Order Value (AOV): Find the average value of an order.
* Top 5 Performing Pizzas: Identify the pizzas with the highest sales quantities.
* Bottom 5 Performing Pizzas: Identify the pizzas with the lowest sales quantities.
* Top 5 Revenue-Generating Pizzas: Find the pizzas that contributed most to revenue.
* Bottom 5 Revenue-Generating Pizzas: Find the pizzas with the least revenue.
* Hourly Sales Distribution: Analyze sales trends by hour.
* Monthly Sales Distribution: Examine sales trends by month.
  

⚙️ SQL Queries

The project uses SQL to calculate all KPIs. Here are some examples:

- Total Pizzas Sold:
``` sql
SELECT SUM(quantity) AS total_pizzas_sold FROM pizza_sales;
```

- Total Revenue Generated:
``` sql
SELECT ROUND(SUM(total_price)) AS total_revenue_generated FROM pizza_sales;
```

- Top 5 Performing Pizzas:
 ``` sql
SELECT pizza_name, SUM(quantity) AS total_sales 
FROM pizza_sales 
GROUP BY pizza_name 
ORDER BY total_sales DESC 
LIMIT 5;
```

🚀 How to Run the Project

1. Database Setup:
- Import the pizza_sales data into a database named proj1_db.

2. SQL Execution:
- Use the provided SQL queries to analyze the data and calculate KPIs.
  
3.Visualization (Optional):
- Use tools like Tableau to visualize the results for better insights.

📊 Insights Generated
Examples of Key Insights:
* Total Pizzas Sold: A clear understanding of sales volume.
* Top Performing Pizzas: Helps identify the best-selling pizza varieties.
* Revenue Insights: Understand which pizzas contribute most to business profitability.
* Sales Trends: Explore when sales peak during the day and throughout the year.

📈 Results Visualization
The analysis results are visualized using Tableau to make the insights more accessible and interactive. Here are the key visualizations created:

1. Total Pizzas Sold:
- A numeric indicator or bar chart to display the total number of pizzas sold.
2. Revenue Trends:
- Line charts showcasing revenue trends over time (daily, monthly).
3. Top Performing Pizzas:
- Horizontal bar charts highlighting the top 5 pizzas based on sales quantity.
4. Hourly Sales Distribution:
- Heatmaps or line charts to analyze pizza sales across different hours of the day.
5. Monthly Sales Distribution:
- Line or area charts showing trends in sales volume month by month.
6. Revenue by Pizza Type:
- Tree maps visualizing revenue contributions of different pizzas.
The Tableau dashboards provide a comprehensive overview of sales performance and allow for interactive exploration of data insights.

🛠️ Technologies Used

SQL: Primary language for data analysis.

Tableau: For visualizing the results and creating interactive dashboards.

**[Project link:Pizza Sales](https://github.com/Suniljoshi-2003/MySQL_Projects/blob/main/pizza_sales%20analysis.sql)**
