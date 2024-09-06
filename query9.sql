-- List the products that have been reviewed by at least two different customers.
SELECT p.product_name
FROM Products p
JOIN Reviews r ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(DISTINCT r.customer_id) >= 2;
