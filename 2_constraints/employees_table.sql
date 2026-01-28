.open 2_constraints/employees.sqlite
.mode column -- For Formatting Output in SQLite

-- SQLite Constraints Example

CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name TEXT NOT NULL,
    Age INT CHECK(Age >= 18),
    Email TEXT UNIQUE,
    City TEXT DEFAULT 'Unknown'
);
