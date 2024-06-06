-- Creating a package with an intentional error
SET serveroutput on
CREATE OR REPLACE PACKAGE test_package IS
    PROCEDURE greet;
END test_package;
/

-- Creating the package body with an intentional error
CREATE OR REPLACE PACKAGE BODY test_package IS
    PROCEDURE greet IS
    BEGIN
        -- Intentional error: misspelled 'dbms_output'
        dbms_outpu.put_line('Hello, world!');
    END greet;
END test_package;
/
    

CREATE OR REPLACE PACKAGE BODY test_package2 IS
    PROCEDURE greet IS
    BEGIN
        dbms_output.put_line('Hello, world!');
   END greet;
END test_package;
/
