SELECT
    p.product_name,
    p.category,
    SUM(s.revenue) AS total_revenue,
    SUM(s.units_sold) AS total_units
FROM sales_fact s
JOIN dim_product p
    ON s.product_id = p.product_id
GROUP BY p.product_name, p.category
ORDER BY total_revenue DESC;
