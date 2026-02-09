CREATE TABLE IF NOT EXISTS orders (
    id VARCHAR(255) NOT NULL PRIMARY KEY,
    price FLOAT NOT NULL,
    tax FLOAT NOT NULL,
    final_price FLOAT NOT NULL
);

INSERT INTO orders (id, price, tax, final_price) VALUES
    ('order-1', 100.0, 10.0, 110.0),
    ('order-2', 250.5, 25.05, 275.55),
    ('order-3', 75.0, 7.5, 82.5),
    ('order-4', 500.0, 50.0, 550.0),
    ('order-5', 150.75, 15.075, 165.825),
    ('order-6', 320.0, 32.0, 352.0),
    ('order-7', 89.99, 8.999, 98.989),
    ('order-8', 1000.0, 100.0, 1100.0),
    ('order-9', 45.5, 4.55, 50.05),
    ('order-10', 199.99, 19.999, 219.989);