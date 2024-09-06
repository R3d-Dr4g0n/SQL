-- Retrieve the latest review for each product.
SELECT r1.product_id, r1.review_id, r1.review_date, r1.rating, r1.comments
FROM Reviews r1
WHERE r1.review_date = (
    SELECT MAX(r2.review_date)
    FROM Reviews r2
    WHERE r2.product_id = r1.product_id
);
