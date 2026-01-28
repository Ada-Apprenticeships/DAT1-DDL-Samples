.open 3_building_a_database/database.sqlite
.mode column -- For Formatting Output in SQLite

-- View all data
SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM customers;
SELECT * FROM orders;

-- Books with author names
SELECT b.title, a.name as author, b.price, b.stock
FROM books b
JOIN authors a ON b.author_id = a.author_id;

-- Customer orders with details
SELECT c.name as customer, b.title as book, o.quantity, o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN books b ON o.book_id = b.book_id;

-- Books by George Orwell
SELECT title, price, published_year
FROM books
WHERE author_id = 2;

-- Total orders per customer
SELECT c.name, COUNT(o.order_id) as total_orders
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;
