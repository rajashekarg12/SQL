-- Drop the student table if it exists
DROP TABLE student;

-- Create the student table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Insert three rows into the student table
INSERT INTO student (student_id, first_name, last_name)
VALUES (1, 'John', 'Doe');

INSERT INTO student (student_id, first_name, last_name)
VALUES (2, 'Jane', 'Smith');

INSERT INTO student (student_id, first_name, last_name)
VALUES (3
