-- CHECK Constraint Examples
-- No Database attached to this so don't .open any database

-- Check if value is in a list
CHECK(VALUE IN ('B', 'C', 'D', 'E', 'F', 'M', 'S'));

-- Check if value is in a range
CHECK(VALUE BETWEEN 1 AND 15);

-- Check if value exists in another table
CHECK (VALUE IN (SELECT branchNo FROM Branch));
