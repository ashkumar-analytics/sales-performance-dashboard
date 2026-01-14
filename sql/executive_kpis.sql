SELECT
    SUM(revenue) AS total_revenue,
    SUM(units_sold) AS total_units,
    ROUND(SUM(revenue) / NULLIF(SUM(units_sold),0), 2) AS avg_unit_revenue
FROM sales_fact;
