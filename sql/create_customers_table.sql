-- Create a table for customers

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY, -- PK that automatically increments by 1
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER CHECK (age >= 0),
    city VARCHAR(100)
);

-- Add customers into the table
-- (Names, ages, and cities were generated randomly)

INSERT INTO customers
	(first_name, last_name, age, city)
VALUES
    ('Nathanael', 'Fernandez', 27, 'Christchurch'),
    ('Brenda', 'Anderson', 43, 'Auckland'),
    ('Eli', 'Law', 21, 'Wellington'),
    ('Callum', 'Escobar', 35, 'Dunedin'),
    ('Curtis', 'Carpenter', 56, 'Hamilton'),
    ('Zachariah', 'Hebert', 32, 'Tauranga'),
    ('Abbey', 'Wilson', 24, 'Nelson'),
    ('Jerry', 'Saunders', 61, 'Christchurch'),
    ('Maisha', 'Lang', 29, 'Rotorua'),
    ('Kade', 'Wood', 38, 'Auckland'),
    ('Mali', 'Chandler', 19, 'Invercargill'),
    ('Robin', 'Fox', 47, 'Wellington'),
    ('Corey', 'Bond', 33, 'Napier'),
    ('Josephine', 'Nash', 52, 'Christchurch'),
    ('Fletcher', 'Pugh', 26, 'New Plymouth'),
    ('Ross', 'Bell', 44, 'Hamilton'),
    ('Dana', 'Mann', 31, 'Queenstown'),
    ('Abdulrahman', 'Collins', 22, 'Auckland'),
    ('Yunus', 'Cuevas', 39, 'Palmerston North'),
    ('Otto', 'David', 64, 'Dunedin'),
    ('Henry', 'Nelson', 28, 'Wellington'),
    ('Kayne', 'Hughes', 36, 'Tauranga'),
    ('Minnie', 'Howe', 48, 'Christchurch'),
    ('Zion', 'Jones', 20, 'Rotorua'),
    ('Faizan', 'Bowen', 41, 'Auckland'),
    ('Inayah', 'Houston', 25, 'Nelson'),
    ('Rajan', 'Reynolds', 58, 'Hamilton'),
    ('Jessica', 'Porter', 34, 'Wellington'),
    ('Ellis', 'Mclaughlin', 23, 'Dunedin'),
    ('Eleanor', 'Sawyer', 45, 'Napier'),
    ('Leonard', 'Yang', 67, 'Christchurch'),
    ('Phillip', 'Krueger', 30, 'New Plymouth'),
    ('Francesco', 'Sheppard', 37, 'Auckland'),
    ('Isobella', 'Hawkins', 18, 'Queenstown'),
    ('Diana', 'Mckee', 54, 'Palmerston North'),
    ('Georgie', 'Randall', 42, 'Tauranga'),
    ('Jesse', 'Pike', 27, 'Invercargill'),
    ('Lauren', 'Morgan', 50, 'Christchurch'),
    ('Ciara', 'Norman', 33, 'Hamilton'),
    ('Matilda', 'Spencer', 46, 'Wellington');
