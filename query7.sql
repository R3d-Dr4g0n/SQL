-- Retrieve the top 5 customers who have spent the most on the platform

SELECT c.name, c.email, SUM(oi.quantity * p.price) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderItems oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.name, c.email
ORDER BY total_spent DESC
LIMIT 5;
