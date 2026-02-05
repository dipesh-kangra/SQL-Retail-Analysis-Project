USE retail_analysis;


-- Total Revenue
-- Insight: Shows overall business performance

SELECT 
    SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id;



-- Top 5 Products by Revenue
-- Insight: Helps identify high-demand products

SELECT 
    p.product_name,
    SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC
LIMIT 5;



-- City-wise Revenue
-- Insight: Identifies strong and weak markets

SELECT 
    c.city,
    SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.city
ORDER BY total_revenue DESC;



-- Top 5 Customers by Spending
-- Insight: Identifies the highest-value customers who contribute most to total revenue.

SELECT 
    c.name,
    SUM(p.price * o.quantity) AS total_spent
FROM orders o
JOIN products p
ON o.product_id = p.product_id
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;



-- Revenue by Category
-- Insight: Shows which product categories generate maximum revenue and drive business growth.

SELECT 
    p.category,
    SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;



-- Monthly Revenue Trend
-- Insight: Highlights peak and low sales months to support better planning and forecasting.

SELECT 
    MONTH(o.order_date) AS month,
    SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY MONTH(o.order_date)
ORDER BY month;


-- Repeat Buyers
-- Insight: Useful for loyalty programs

SELECT 
    c.name,
    COUNT(o.order_id) AS no_of_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1;


