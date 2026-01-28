.open 2_constraints/task2.sqlite
.mode column -- For Formatting Output in SQLite

-- Task 2: Ensures that list price is always greater or equal to discount and both
-- discount and list price are greater or equal to zero.

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    list_price DECIMAL(10, 2) NOT NULL,
    discount DECIMAL(10, 2) NOT NULL
);
