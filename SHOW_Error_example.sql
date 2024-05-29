--DROP TABLE errors;
CREATE TABLE errors (
    code NUMBER,
    message VARCHAR2(64)
);

CREATE OR REPLACE PROCEDURE p AUTHID DEFINER AS
    name EMPLOYEES.LAST_NAME%TYPE; -- Intentional error: 'name' is not defined
    v_code NUMBER;
    v_errm VARCHAR2(64);
BEGIN
    SELECT last_name INTO name FROM EMPLOYEES WHERE EMPLOYEE_ID = -1;
EXCEPTION
    WHEN OTHERS THEN
        v_code := SQLCODE;
        v_errm := SUBSTR(SQLERRM, 1, 64);
        INSERT INTO errors (code, message) VALUES (v_code, v_errm);
END;

