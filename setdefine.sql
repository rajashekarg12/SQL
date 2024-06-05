DROP TABLE country_table987;
CREATE TABLE country_table987 (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

SELECT * FROM country_table987 WHERE column_name = '&PersonID';
