# Retail Sales Analysis using MySQL

## 📊 Project Overview
This project analyzes retail sales data to understand customer behavior, product performance, and revenue trends using SQL.

The goal is to generate actionable business insights for decision-making.

---

## 🎯 Objective
- Analyze sales performance
- Identify top products and customers
- Understand city-wise and monthly trends
- Find repeat buyers

---

## 🛠️ Tools Used
- MySQL
- MySQL Workbench
- MS Excel (for exporting results)

---

## ⚙️ Methodology

1. Designed relational database structure
2. Created tables with primary and foreign keys
3. Inserted realistic retail sales data
4. Validated and cleaned data
5. Performed joins and aggregations
6. Analyzed trends and patterns
7. Generated business insights
8. Documented results

---

## 🗃️ Dataset Description

The database contains three tables:

### customers
- customer_id (PK)
- name
- city
- gender
- signup_date

### products
- product_id (PK)
- product_name
- category
- price

### orders
- order_id (PK)
- customer_id (FK)
- product_id (FK)
- quantity
- order_date

---

## 🔍 Analysis Performed

1. Total Revenue Calculation  
2. Top 5 Products by Revenue  
3. City-wise Revenue Analysis  
4. Top Customers by Spending  
5. Category-wise Revenue  
6. Monthly Sales Trend  
7. Repeat Buyers Analysis  

---

## 📈 Key Insights

- Total Revenue: ₹10,40,300  
- Best Performing City: Delhi  
- Highest Revenue Category: Electronics  
- Peak Sales Month: May  
- Top Customer: Neha Verma  
- 15 customers placed more than 3 orders

---

## 💡 Business Recommendations

- Focus marketing on Electronics category
- Launch loyalty programs for repeat customers
- Increase promotions in low-performing cities
- Run special offers during low-sales months

---

## 👤 Author
Dipesh Kangra  
GitHub: https://github.com/dipesh-kangra
