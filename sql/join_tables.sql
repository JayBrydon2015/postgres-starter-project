-- Perform left join between customers table and an aggregation of orders table
-- Replace NULL number_of_orders and total_spent values with 0
-- Investigate which customer spent the most in total

WITH order_summary AS (
    SELECT
        customer_id,
        COUNT(order_id) AS number_of_orders,
        SUM(total_cost) AS total_spent
    FROM orders
    GROUP BY customer_id
)

SELECT
    customers.customer_id,
    customers.first_name,
    customers.last_name,
    COALESCE(order_summary.number_of_orders, 0) AS number_of_orders,
    COALESCE(order_summary.total_spent, 0) AS total_spent
FROM customers
LEFT JOIN order_summary
    ON customers.customer_id = order_summary.customer_id
ORDER BY total_spent DESC;
