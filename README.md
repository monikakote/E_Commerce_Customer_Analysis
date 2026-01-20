🛒 E-Commerce Customer Analysis – A Data Analytics Project
--
__
📌 Project Title

E-Commerce Customer Analysis using SQL & Power BI
--

📖 1. Project Overview

This project focuses on analyzing e-commerce customer transaction data to understand sales performance, customer preferences, and payment behavior.
An interactive Power BI dashboard was developed to convert raw transactional data into clear business insights that support data-driven decision making.

The project follows a complete analytics lifecycle starting from data preparation to visualization and insight generation.
--
🔗 2. Analytics Workflow

Raw Data → Data Cleaning → Database (PostgreSQL) → SQL Analysis → Power BI Dashboard → Business Insights
--
🗂️ 3. Dataset Description

The dataset contains customer-level purchase information with the following key fields:

User_ID

Product_ID

Category

Price (Rs.)

Discount (%)

Final_Price (Rs.)

Payment_Method

Purchase_Date

Each row represents one completed customer transaction.
--
🛠️ 4. Data Preparation & Database Layer
Tools Used

Python (Pandas) – for initial inspection

PostgreSQL (pgAdmin) – for storage and querying

SQL – for aggregations and business analysis

Data Handling Steps

Verified correct data types for numeric and date columns

Ensured consistent column naming for SQL compatibility

Imported the cleaned dataset into PostgreSQL for structured analysis
--
📊 5. Dashboard Design (Power BI)

The dashboard was designed to provide both high-level KPIs and detailed breakdowns.

🔹 Key KPIs

Total Discount Value – 69K

First Product ID Indicator – used as a reference KPI

Revenue & Price comparison
--
📈 6. Dashboard Visual Analysis
6.1 Payment Method Analysis

Visualization: Pie Chart

Insight:

Credit Card, UPI, Debit Card, Net Banking, and Cash on Delivery show a balanced distribution

Digital payments dominate overall transactions
--
6.2 Category-Wise Revenue Analysis

Visualization: Bar Chart (Sum of Final Price by Category)

Findings:

Clothing generates the highest revenue

Books and Home & Kitchen follow closely

Electronics contributes comparatively lower revenue
--
6.3 Product-Level Performance

Visualization: Bar Chart (Count of Category & Sum of Price by Product_ID)

Insights:

Some products have high prices but low sales frequency

Others sell frequently with moderate pricing
--
6.4 Discount Impact Analysis

Visualization: Pie Chart (Price vs Final Price vs Discount)

Observation:

Discounts form a smaller but important portion of pricing

Promotions influence customer purchasing decisions
--
6.5 Time-Based Analysis

Visualization: Purchase Date slicer

Usage:

Enables month-wise or date-specific analysis

Helps track seasonal sales trends
--
🎯 7. Business Insights & Findings

Customers prefer digital payment methods over cash

Clothing is the top revenue-generating category

Discounts improve sales without major revenue loss

A small number of products drive most of the revenue

Sales vary across different purchase dates
--
🧠 8. Key Learnings from the Project

Real-world data requires careful cleaning and formatting

SQL enables structured and efficient data analysis
_
Dashboards should focus on clarity and actionable insights

Visualization helps translate data into business decisions
