SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(revenue) AS total_revenue,
    SUM(units_sold) AS total_units
FROM sales_fact
GROUP BY month
ORDER BY month;
