-- Create the student table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_date DATE,
    major VARCHAR(50)
);

-- Insert three rows into the student table
INSERT INTO student (student_id, first_name, last_name, birth_date, major)
VALUES (1, 'John', 'Doe', '2000-01-01', 'Computer Science');

INSERT INTO student (student_id, first_name, last_name, birth_date, major)
VALUES (2, 'Jane', 'Smith', '2001-02-02', 'Mathematics');

INSERT INTO student (student_id, first_name, last_name, birth_date, major)
VALUES (3, 'Emily', 'Johnson', '2002-03-03', 'Physics');
commit;