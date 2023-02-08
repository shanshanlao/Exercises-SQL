-- Write an SQL query to find for each user, the join date and the number of orders they made as a buyer in 2019.

SELECT u.user_id as 'buyer_id', u.join_date, 
    CASE WHEN o.buyer_id IS NOT NULL THEN COUNT(o.order_id) 
    ELSE 0
    END AS 'orders_in_2019'
FROM Users u 
LEFT JOIN Orders o
ON u.user_id = o.buyer_id
AND YEAR(o.order_date) = '2019'
GROUP BY u.user_id
ORDER BY u.user_id
