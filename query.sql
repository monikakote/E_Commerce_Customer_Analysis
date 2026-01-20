
🧮 SQL Analysis
--
All PostgreSQL queries used for analysis are available in the `sql/` folder.
--
Key queries include:
- Category-wise revenue analysis
- Payment method distribution
- Repeat customer identification
- Discount impact analysis

select *from e_commerce;

--1.How many total orders?
SELECT COUNT(*) AS total_orders
FROM e_commerce;


--2.how much Total revenue ?
SELECT SUM("Final_Price(Rs.)") AS total_revenue
FROM e_commerce;


--3.Category-wise total sales?
SELECT "Category",
       SUM("Final_Price(Rs.)") AS category_revenue
FROM e_commerce
GROUP BY "Category"
ORDER BY category_revenue DESC;


--4.most saling  category?
SELECT "Category",
       COUNT(*) AS total_orders
FROM e_commerce
GROUP BY "Category"
ORDER BY total_orders DESC
LIMIT 1;


--5.Payment method  distribution?
SELECT "Payment_Method",
       COUNT(*) AS total_orders
FROM e_commerce
GROUP BY "Payment_Method";


--6.Repeat customers ?
SELECT "User_ID",
       COUNT(*) AS total_orders
FROM e_commerce
GROUP BY "User_ID"
HAVING COUNT(*) > 1;


--7.Average Order Value (AOV)?
SELECT AVG("Final_Price(Rs.)") AS avg_order_value
FROM e_commerce;


--8.after Discount how much money is saved?
SELECT SUM("Price (Rs.)" - "Final_Price(Rs.)") AS total_discount_given
FROM e_commerce;


--9.Category-wise average discount?
SELECT "Category",
       AVG("Discount (%)") AS avg_discount
FROM e_commerce
GROUP BY "Category";


--10.Month-wise sales trend
SELECT
    EXTRACT(MONTH FROM "Purchase_Date"::DATE) AS month,
    SUM("Final_Price(Rs.)") AS monthly_sales
FROM e_commerce
GROUP BY month
ORDER BY month;



--11.Highest sales  month?
SELECT 
    EXTRACT(MONTH FROM "Purchase_Date"::DATE) AS month,
    SUM("Final_Price(Rs.)") AS total_sales
FROM e_commerce
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;


--12.High discount → high sales?
SELECT 
    "Discount (%)",
    COUNT(*) AS orders,
    SUM("Final_Price(Rs.)") AS total_sales
FROM e_commerce
GROUP BY "Discount (%)"
ORDER BY "Discount (%)" DESC;

--13.Top 5 highest paying customers
SELECT 
    "User_ID",
    SUM("Final_Price(Rs.)") AS total_spent
FROM e_commerce
GROUP BY "User_ID"
ORDER BY total_spent DESC
LIMIT 5;

--14.Cash vs Online payment revenue
SELECT 
    "Payment_Method",
    SUM("Final_Price(Rs.)") AS revenue
FROM e_commerce
GROUP BY "Payment_Method";


