SELECT employee, sale_date, amount,
       LAG(amount) OVER (
           PARTITION BY employee
           ORDER BY sale_date, sale_id
       ) AS previous_sale
FROM sales;
SELECT employee, sale_date, amount,
       LAG(amount) OVER (
           PARTITION BY employee
           ORDER BY sale_date, sale_id
       ) AS previous_sale,
       amount - LAG(amount) OVER (
           PARTITION BY employee
           ORDER BY sale_date, sale_id
       ) AS difference
FROM sales;
WITH sales_comparison AS (
    SELECT employee, sale_date, amount,
           LAG(amount) OVER (
               PARTITION BY employee
               ORDER BY sale_date, sale_id
           ) AS previous_sale
    FROM sales
)
SELECT employee, sale_date, amount, previous_sale,
       CASE
           WHEN previous_sale IS NULL THEN 'First Sale'
           WHEN amount > previous_sale THEN 'Increased'
           WHEN amount < previous_sale THEN 'Decreased'
           ELSE 'No Change'
       END AS sales_trend
FROM sales_comparison;
SELECT employee, department, sale_date, amount,
       LAG(amount) OVER (
           PARTITION BY department
           ORDER BY sale_date, sale_id
       ) AS previous_dept_sale
FROM sales;