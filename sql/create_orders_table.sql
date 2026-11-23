-- Create an orders table
-- Create a foreign key with customer_id

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(customer_id),
    order_date DATE,
	item_name VARCHAR(100),
    total_cost NUMERIC(10, 2)
);

-- Add orders into the table

INSERT INTO orders
    (customer_id, order_date, item_name, total_cost)
VALUES
    (1, '2026-10-15', 'Vacuum cleaner', 249.99),
    (1, '2026-10-20', 'Computer keyboard', 79.50),
    (2, '2026-10-18', 'Phone', 249.00),
    (3, '2026-10-21', 'Smoothie', 6.99),
    (5, '2026-10-22', 'Laptop', 1200.00),
    (5, '2026-10-25', 'Headphones', 174.99);
