-- Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

SELECT DISTINCT p.product_id, p.product_name
FROM Product p, Sales s
WHERE p.product_id = s.product_id
AND s.product_id NOT IN (
    SELECT product_id
    FROM Sales
    WHERE sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31')
