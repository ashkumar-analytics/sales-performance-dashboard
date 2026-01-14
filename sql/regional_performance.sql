SELECT
    r.region,
    r.country,
    SUM(s.revenue) AS total_revenue,
    SUM(s.units_sold) AS total_units
FROM sales_fact s
JOIN dim_region r
    ON s.region_id = r.region_id
GROUP BY r.region, r.country
ORDER BY total_revenue DESC;
