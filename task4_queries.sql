-- 1. Top 5 expensive products
SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 5;

-- 2. Orders with Customer Names
SELECT o.order_id, c.name AS customer_name, o.order_date
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;

-- 3. Products with their total number of times ordered
SELECT p.product_name, COUNT(oi.product_id) AS times_ordered
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY times_ordered DESC;

-- 4. All customers and their total orders (even if 0)
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id;

-- 5. Total revenue
SELECT SUM(price * quantity) AS total_revenue
FROM order_items;

-- 6. Revenue per product
SELECT p.product_name, SUM(oi.price * oi.quantity) AS product_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id
ORDER BY product_revenue DESC;

-- 7. Customers with Total Spend > 1000
SELECT name, customer_id
FROM customers
WHERE customer_id IN (
    SELECT o.customer_id
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    GROUP BY o.customer_id
    HAVING SUM(oi.price * oi.quantity) > 1000
);

-- 8. View for Customer Order Summary
CREATE VIEW customer_order_summary AS
SELECT c.customer_id, c.name, COUNT(o.order_id) AS total_orders,
       SUM(oi.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_id;

-- 9. Create Index for faster joins
CREATE INDEX IF NOT EXISTS idx_orders_customer_id ON orders(customer_id);
