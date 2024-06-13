
SELECT product_line , to_char(date, 'Month') AS month, warehouse, (SUM(total) - SUM(payment_fee)) as net_revenue
FROM sales
WHERE client_type = 'Wholesale'
GROUP BY  warehouse, to_char(date, 'Month'), product_line
ORDER BY product_line DESC, month DESC, net_revenue DESC;
