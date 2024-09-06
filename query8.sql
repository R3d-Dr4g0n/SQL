-- Find the average number of items per order

SELECT AVG(item_count) AS avg_items_per_order
FROM (
    SELECT o.order_id, COUNT(oi.order_item_id) AS item_count
    FROM Orders o
    JOIN OrderItems oi ON o.order_id = oi.order_id
    GROUP BY o.order_id
) AS order_summary;
