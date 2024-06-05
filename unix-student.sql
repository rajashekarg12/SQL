Drop table students

-- Create the students table without the city column
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR2(100),
    gender CHAR(1),
    age INT
);

-- Verify the table structure
DESCRIBE students;

-- Insert records into the students table
INSERT INTO students (id, name, gender, age) VALUES (1, 'Aarav Sharma', 'M', 20);
INSERT INTO students (id, name, gender, age) VALUES (2, 'Anay Gupta', 'F', 22);
INSERT INTO students (id, name, gender, age) VALUES (4, 'Diya Singh', 'F', 21);
INSERT INTO students (id, name, gender, age) VALUES (5, 'Krishna Reddy', 'M', 23);
INSERT INTO students (id, name, gender, age) VALUES (6, 'Int Rao', 'F', 20);
INSERT INTO students (id, name, gender, age) VALUES (7, 'Rohan Mehta', 'M', 22);


@selectFile.sql
