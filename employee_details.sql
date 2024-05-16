-- Create a PL/SQL file named "employee_details.sql"

-- Procedure to retrieve employee details
CREATE OR REPLACE PROCEDURE get_employee_details(
    p_employee_id IN NUMBER,
    o_employee_name OUT VARCHAR2,
    o_employee_salary OUT NUMBER,
    o_employee_department OUT VARCHAR2
)
AS
BEGIN
    -- Retrieve employee details based on employee ID
    SELECT employee_name, employee_salary, employee_department
    INTO o_employee_name, o_employee_salary, o_employee_department
    FROM employees
    WHERE employee_id = p_employee_id;

    -- Exception handling
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Employee not found.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

-- Example of calling the procedure
DECLARE
    v_emp_name VARCHAR2(100);
    v_emp_salary NUMBER;
    v_emp_dept VARCHAR2(100);
BEGIN
    -- Call the procedure with an employee ID
    get_employee_details(1001, v_emp_name, v_emp_salary, v_emp_dept);

    -- Output retrieved employee details
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_emp_name);
    DBMS_OUTPUT.PUT_LINE('Employee Salary: ' || v_emp_salary);
    DBMS_OUTPUT.PUT_LINE('Employee Department: ' || v_emp_dept);
END;
/
