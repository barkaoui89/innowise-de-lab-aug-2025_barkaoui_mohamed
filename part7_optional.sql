SELECT 
    CONCAT(c.first_name, ' ', c.last_name) AS full_name,
    c.country,
    order_stats.total_orders,
    order_stats.total_amount
FROM Customers c
-- Get customers with at least 2 orders and their totals
INNER JOIN (
    SELECT 
        customer_id,
        COUNT(*) AS total_orders,
        SUM(amount) AS total_amount
    FROM Orders
    GROUP BY customer_id
    HAVING COUNT(*) >= 2
    ) AS order_stats ON c.customer_id = order_stats.customer_id
-- Ensure they have at least one 'Delivered' shipping
WHERE c.customer_id IN (
    SELECT DISTINCT customer 
    FROM Shippings 
    WHERE status = 'Delivered'
    );