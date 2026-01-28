.open 2_constraints/task1.sqlite
.mode column -- For Formatting Output in SQLite

-- Task 1: Ensure that the values in the phone number attribute is least 10 characters.
-- (hint: you will need to use a SQLite built-in function very similar to Python or JS)

CREATE TABLE contacts (
    contact_id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT,
    phone TEXT NOT NULL
);
