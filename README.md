# 🛒 Advanced E-commerce Sales Database Project (MySQL)

## Project Overview
This project demonstrates the design, implementation, and analysis of a **relational E-commerce database** using **MySQL**.  
It simulates real-world business scenarios by analyzing **customers, orders, products, and payments**. The project highlights **SQL querying, database design, and data analytics skills**, making it a strong showcase for technical portfolios.

---

## 🎯 Objectives
- Design a relational database for an online store.
- Store and manage sales, product, customer, and payment data efficiently.
- Perform complex analytical queries to extract business insights.
- Demonstrate advanced SQL techniques like **joins, aggregations, nested queries, and date/time analysis**.

---

## 🗂 Database Structure

### 1️⃣ Customers
- `customer_id` (INT, Primary Key)  
- `name` (VARCHAR)  
- `location` (VARCHAR)

### 2️⃣ Products
- `product_id` (INT, Primary Key)  
- `product_name` (VARCHAR)  
- `category` (VARCHAR)  
- `price` (DECIMAL)

### 3️⃣ Orders
- `order_id` (INT, Primary Key)  
- `customer_id` (FK → Customers)  
- `product_id` (FK → Products)  
- `order_date` (DATE)  
- `quantity` (INT)  
- `amount` (DECIMAL)

### 4️⃣ Payments
- `payment_id` (INT, Primary Key)  
- `order_id` (FK → Orders)  
- `payment_type` (VARCHAR)  
- `payment_status` (VARCHAR)

---

## 🛠 Skills & Concepts Demonstrated
- **SQL Queries**: SELECT, JOIN, GROUP BY, HAVING, ORDER BY  
- **Aggregations**: SUM, COUNT, AVG  
- **Advanced Analytics**:  
  - Monthly sales trends  
  - Top customers by revenue  
  - Most popular product categories  
  - Payment success/failure rates  
- **Database Design**: Primary & foreign key constraints, normalized tables  
- **Real-world Simulation**: Mimics e-commerce business analytics workflow  

---

## 📊 Sample Queries & Insights

### Top 5 Customers by Revenue
```sql
SELECT c.name, SUM(o.amount) AS total_spent
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;
