.open 3_building_a_database/database.sqlite
.mode column -- For Formatting Output in SQLite

-- Database schema with constraints and relations

CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE,
    country TEXT DEFAULT 'Unknown'
);

CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author_id INTEGER NOT NULL,
    price DECIMAL(10, 2) CHECK(price >= 0),
    stock INTEGER DEFAULT 0 CHECK(stock >= 0),
    published_year INTEGER CHECK(published_year BETWEEN 1900 AND 2100),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    age INTEGER CHECK(age >= 18)
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    quantity INTEGER CHECK(quantity > 0),
    order_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
