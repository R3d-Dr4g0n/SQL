-- Retrieve the average rating for each product that has received at least 10 reviews.
SELECT p.product_name, AVG(r.rating) AS avg_rating
FROM Products p
JOIN Reviews r ON p.product_id = r.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(r.review_id) >= 10;
