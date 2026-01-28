.open 3_building_a_database/database.sqlite
.mode column -- For Formatting Output in SQLite

-- Single insertion
INSERT INTO authors (author_id, name, email, country) 
VALUES (1, 'Jane Austen', 'jane@classics.com', 'UK');

-- Batch insertion
INSERT INTO authors (author_id, name, email, country) VALUES
    (2, 'George Orwell', 'george@classics.com', 'UK'),
    (3, 'Harper Lee', 'harper@american.com', 'USA'),
    (4, 'Gabriel Garcia Marquez', 'gabriel@latin.com', 'Colombia');

-- Insertion without all columns (uses defaults)
INSERT INTO authors (author_id, name, email) 
VALUES (5, 'Anonymous Writer', 'anon@mystery.com');

-- Books with foreign key relations
INSERT INTO books (book_id, title, author_id, price, stock, published_year) VALUES
    (1, 'Pride and Prejudice', 1, 12.99, 50, 1813),
    (2, '1984', 2, 15.99, 30, 1949),
    (3, 'Animal Farm', 2, 10.99, 25, 1945),
    (4, 'To Kill a Mockingbird', 3, 14.99, 40, 1960),
    (5, 'One Hundred Years of Solitude', 4, 18.99, 20, 1967);

-- Books omitting some optional columns
INSERT INTO books (book_id, title, author_id, price, published_year) 
VALUES (6, 'Mystery Novel', 5, 9.99, 2020);

-- Customers
INSERT INTO customers (customer_id, name, email, age) VALUES
    (1, 'Alice Johnson', 'alice@email.com', 25),
    (2, 'Bob Smith', 'bob@email.com', 32),
    (3, 'Carol White', 'carol@email.com', 28);

-- Single order
INSERT INTO orders (order_id, customer_id, book_id, quantity) 
VALUES (1, 1, 1, 2);

-- Batch orders
INSERT INTO orders (order_id, customer_id, book_id, quantity, order_date) VALUES
    (2, 2, 2, 1, '2026-01-15'),
    (3, 1, 3, 3, '2026-01-20'),
    (4, 3, 4, 1, '2026-01-22'),
    (5, 2, 5, 2, '2026-01-25');

-- Order without specifying date (uses default)
INSERT INTO orders (order_id, customer_id, book_id, quantity) 
VALUES (6, 3, 1, 1);
