-- This is a sample SQL file
SELECT * FROM users;

WHENEVER SQLERROR CONTINUE

INSERT INTO users (id, name) VALUES (1, 'John Doe');
