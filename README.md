# 📊 SQL for Data Analysis

## 🎯 Objective

The objective of this task is to **analyze and extract insights** from a relational ecommerce database using SQL. This includes the use of basic to advanced SQL queries involving selection, filtering, aggregation, joins, subqueries, views, and indexing.

---

## 🛠️ Tools & Technologies

- **Database Engine**: SQLite  
- **Frontend Tool**: DB Browser for SQLite / SQLite CLI  
- **Language**: SQL  
- **Dataset**: `ecommerce_sample.db`

---

## 🧾 Dataset Structure

This database includes the following tables:

| Table Name   | Description                          |
|--------------|--------------------------------------|
| `customers`  | Stores customer details              |
| `orders`     | Contains order information           |
| `order_items`| Details of individual order items    |
| `products`   | Information about products           |

---

## 📂 Project Files

| File Name                  | Description                             |
|---------------------------|-----------------------------------------|
| `task4_queries.sql`       | All SQL queries written for analysis    |
| `ecommerce_sample.db`     | SQLite database used for the analysis   |
| `screenshots/`            | Folder containing output screenshots    |
| `README.md`               | Project documentation (this file)       |

---

## ✅ SQL Tasks Performed

| # | Task Description                                               | Screenshot Filename                        |
|---|----------------------------------------------------------------|---------------------------------------------|
| 1 | Top 5 most expensive products                                  | `01_top_expensive_products.png`             |
| 2 | Orders with customer names and dates                           | `02_orders_with_customer_names.png`         |
| 3 | Products with total number of times ordered                    | `03_products_order_frequency.png`           |
| 4 | All customers and their total orders (even those with 0)       | `04_customers_total_orders.png`             |
| 5 | Total revenue generated from all orders                        | `05_total_revenue.png`                      |
| 6 | Revenue generated per product                                  | `06_revenue_per_product.png`                |
| 7 | Customers whose total spending is more than 1000               | `07_customers_spent_above_1000.png`         |
| 8 | View showing customer order summary (orders & total spent)     | `08_customer_order_summary_view.png`        |
| 9 | Index created for optimizing customer-order lookup             | `09_index_creation.png`                     |

---

## 📊 Key Learnings

- Writing **SELECT**, **WHERE**, **GROUP BY**, **ORDER BY** queries
- Using different types of **joins** effectively
- Applying **aggregate functions** like `SUM()`, `COUNT()`
- Creating **subqueries** for conditional filtering
- Designing and using **views** for reusable analytics
- Improving performance with **indexes**

---

## 📸 Output Screenshots

All screenshots are saved in the `screenshots/` folder and named based on the task numbers (e.g., `01_top_expensive_products.png`).

---

## 🙌 Acknowledgments

This is a part of the Data Analysis Task series using SQL and is done for learning and demonstration purposes.

---

> Author: **Kevin Lazarus**  
> Date: June 2025  
> Dataset: Sample Ecommerce Database  
> Tool: SQLite  
