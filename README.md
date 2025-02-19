#  Retail Sales Analysis

**📌 Project Overview**

This project involves analyzing retail sales data stored in a relational database (retail_db). The data includes transactions, customer details, product categories, and sales figures. The project covers various stages of data management, including database creation, table creation, data cleaning, exploration, and analysis.

📂 Database Information
* Database Name: retail_db
* Table Name: retail_sales
* Table Columns: (transaction_ID,sales_date,sales_time,customer_ID,gender,age,category, quantity,price_per_unit,cogs,total_sale)
  
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


# MySQL Projects: Employee Analysis

Welcome to the **Employee Analysis** project! This repository contains a MySQL script that analyzes employee-related data to derive meaningful insights.

---

## 🗁 **Project Overview**

The **Employee Analysis** project demonstrates how MySQL can be used to analyze and manage employee data effectively. This script includes SQL queries for tasks like data aggregation, filtering, and detailed reporting.

---

## 🗁 **File Structure**

- **`Employee Analysis.sql`**: Contains all the SQL queries used for analyzing employee data.

---

## 🚀 **Features**

- Analyze employee details, including salary distribution, department-wise employee count, and average salaries.
- Perform filtering and sorting for specific insights.
- Demonstrates advanced SQL techniques like `JOINs`, `GROUP BY`, and `HAVING`.

---

## 🔧 **Requirements**

- **Database**: MySQL Server installed on your system.
- **SQL Client**: Any SQL IDE like MySQL Workbench, DBeaver, or phpMyAdmin.

---

## 📌 **How to Use**

1. Clone this repository:
   ```bash
   git clone https://github.com/Suniljoshi-2003/MySQL_Projects.git
   ```

2. Navigate to the repository:
   ```bash
   cd MySQL_Projects
   ```

3. Open the `Employee Analysis.sql` file in your preferred SQL editor.

4. Execute the SQL script on your database.

---

## ✨ **Skills Demonstrated**

- **SQL Concepts**: Data manipulation, aggregation, filtering, and sorting.
- **Data Analysis**: Generating insights from employee data.
- **Problem-Solving**: Practical SQL queries for real-world scenarios.

---

## 🤝 **Contributing**

Contributions are welcome! If you have suggestions for improvement or additional features, feel free to fork this repository and submit a pull request.

---

## 📧 **Contact**

For any queries, feel free to reach out:

- **Name**: Sunil Chandra Joshi
- **GitHub**: [Suniljoshi-2003](https://github.com/Suniljoshi-2003)
- **Location**: Noida, UP

---

## 🐜 **License**

This project is licensed under the [MIT License](LICENSE).

---

### ⭐ If you find this project useful, please give it a star on GitHub!

---

# PizzaHut Sales Analysis using MySQL  

## 📋 Project Description  
This project focuses on analyzing the sales data of PizzaHut using MySQL. The analysis includes identifying key trends, calculating performance metrics, and deriving actionable insights to enhance business decision-making.  

## 🚀 Key Objectives  
- Perform data analysis to understand sales trends and customer behavior.  
- Identify top-performing products, categories, and locations.  
- Analyze revenue generated across different time periods.  
- Derive actionable insights to improve sales and marketing strategies.  

## 📂 Dataset  
The dataset includes:  
- **Order Details**: Order ID, product name, quantity, price, and total revenue.  
- **Customer Information**: Customer ID, location, and preferences.  
- **Sales Period**: Date and time of orders for trend analysis.  

> **Note**: Ensure the data is properly imported into your MySQL database before running the queries.  

## 🛠️ Tools Used  
- **Database**: MySQL  
- **Platform**: SQL Workbench or any MySQL-supported environment  

## 📊 Analysis Highlights  
Some key analyses performed in this project:  
1. Total revenue generated by PizzaHut.  
2. Top-selling products and their contribution to total sales.  
3. Customer preferences based on locations.  
4. Sales trends across months and days of the week.  
5. Average order value and its variance over time.  

## 🔍 Sample Queries  
- 1. Total Revenue  

```sql
SELECT SUM(total_amount) AS Total_Revenue  
FROM sales_data;
```

- 2. Top-Selling Products

```sql
SELECT product_name, SUM(quantity) AS Total_Quantity  
FROM sales_data  
GROUP BY product_name  
ORDER BY Total_Quantity DESC  
LIMIT 10;
```

- 3. Monthly Revenue

```sql
SELECT MONTH(order_date) AS Month, SUM(total_amount) AS Monthly_Revenue  
FROM sales_data  
GROUP BY MONTH(order_date)  
ORDER BY Month;
```
---

📈 Insights Derived
The top 5 products account for 50% of total revenue.
Weekend sales are significantly higher compared to weekdays.
Location-based promotions can increase customer engagement

#PizzaHut[project](https://github.com/Suniljoshi-2003/MySQL_Projects/blob/main/PizzaHut%20Sales%20Analysis%20using%20MySQL.sql)

#PizzaHut_project[PPT](https://drive.google.com/file/d/1yET2F7d_7VhPgUbf4_gSaIaYuxjnOrXK/view?usp=sharing)
