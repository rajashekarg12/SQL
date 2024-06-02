-- Create a table
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    employee_name VARCHAR2(100)
);

-- Attempt to select a non-existing column
SELECT non_existing_column FROM employees;
