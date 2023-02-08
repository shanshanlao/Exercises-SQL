/*
Write an SQL query to report the Capital gain/loss for each stock.

The Capital gain/loss of a stock is the total gain or loss after buying and selling the stock one or many times.
*/

WITH temp as 
(SELECT stock_name, 
    CASE WHEN operation = 'Buy' THEN price * -1
    ELSE price
    END as flow
FROM Stocks)

SELECT stock_name, SUM(flow) as 'capital_gain_loss'
FROM temp
GROUP BY stock_name
