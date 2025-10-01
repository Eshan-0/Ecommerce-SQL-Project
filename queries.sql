-- Top 5 customers by revenue
SELECT c.name, SUM(o.amount) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

-- Monthly revenue trend
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, SUM(amount) AS revenue
FROM Orders
GROUP BY month
ORDER BY month;

-- Most popular product categories
SELECT p.category, COUNT(*) AS total_orders
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_orders DESC;
