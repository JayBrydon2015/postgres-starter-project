-- See all customers

SELECT * FROM customers;

-- Check age constraint works

INSERT INTO customers (first_name, last_name, age, city) VALUES ('John', 'Smith', -20, 'Auckland');

-- Show customers older than 25

SELECT * FROM customers WHERE age > 25;

-- Compute number of customers in each city
-- and average age of customers in each city

SELECT city, COUNT(*) AS customer_count, AVG(age) AS average_age
FROM customers
GROUP BY city;

-- Show first names, ordered from shortest to longest in length

SELECT first_name FROM customers ORDER BY LENGTH(first_name) ASC;

-- Save customers in Auckland as a new table

CREATE TABLE auckland_customers AS
SELECT * FROM customers
WHERE city = 'Auckland';
