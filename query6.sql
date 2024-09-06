-- Calculate the total revenue generated from each product.
SELECT p.product_name, SUM(oi.quantity * p.price) AS total_revenue
FROM Products p
JOIN OrderItems oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name;

