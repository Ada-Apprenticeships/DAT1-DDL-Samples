.open 2_constraints/task3.sqlite
.mode column -- For Formatting Output in SQLite

-- Task 3: In this table, we only want to insert or update those values whose 'age' is above 18 years.

CREATE TABLE voter(
    voter_id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    dob DATE
);
