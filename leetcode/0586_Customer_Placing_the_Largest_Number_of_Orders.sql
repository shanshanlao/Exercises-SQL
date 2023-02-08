/*
Write an SQL query to find the customer_number for the customer who has placed the largest number of orders.

The test cases are generated so that exactly one customer will have placed more orders than any other customer.
*/
SELECT customer_number
FROM Orders
GROUP BY customer_number 
ORDER BY COUNT(order_number) DESC
LIMIT 1;

/*
Follow up: What if more than one customer has the largest number of orders, can you find all the customer_number in this case?
*/
WITH order_cnt AS(
    SELECT customer_number, COUNT(order_number) as 'order_count'
    FROM Orders
    GROUP BY customer_number
)

SELECT customer_number
FROM order_cnt
WHERE order_count = (SELECT MAX(order_count) FROM order_cnt);
