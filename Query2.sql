-- Find the top 3 most purchased products (by quantity) across all orders.

SELECT p.product_name, SUM(oi.quantity) AS total_quantity
FROM Products p
JOIN OrderItems oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_quantity DESC
LIMIT 3;
