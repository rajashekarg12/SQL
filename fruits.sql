-- Create a PL/SQL file named "fruit_example.sql"

-- Drop the table if it exists
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE fruits';
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- Do nothing if the table does not exist
END;
/

-- Create a table for fruits
CREATE TABLE fruits (
    fruit_id NUMBER PRIMARY KEY,
    fruit_name VARCHAR2(100),
    fruit_quantity NUMBER,
    fruit_category VARCHAR2(50)
);

-- Insert some sample data
INSERT INTO fruits (fruit_id, fruit_name, fruit_quantity, fruit_category)
VALUES (1, 'Apple', 50, 'Pome');

INSERT INTO fruits (fruit_id, fruit_name, fruit_quantity, fruit_category)
VALUES (2, 'Banana', 100, 'Berry');

-- Procedure to retrieve fruit details
CREATE OR REPLACE PROCEDURE get_fruit_details(
    p_fruit_id IN NUMBER,
    o_fruit_name OUT VARCHAR2,
    o_fruit_quantity OUT NUMBER,
    o_fruit_category OUT VARCHAR2
)
AS
BEGIN
    -- Retrieve fruit details based on fruit ID
    SELECT fruit_name, fruit_quantity, fruit_category
    INTO o_fruit_name, o_fruit_quantity, o_fruit_category
    FROM fruits
    WHERE fruit_id = p_fruit_id;

    -- Exception handling
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('Fruit not found.');
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

-- Example of calling the procedure
DECLARE
    v_fruit_name VARCHAR2(100);
    v_fruit_quantity NUMBER;
    v_fruit_category VARCHAR2(50);
BEGIN
    -- Call the procedure with a fruit ID
    get_fruit_details(1, v_fruit_name, v_fruit_quantity, v_fruit_category);

    -- Output retrieved fruit details
    DBMS_OUTPUT.PUT_LINE('Fruit Name: ' || v_fruit_name);
    DBMS_OUTPUT.PUT_LINE('Fruit Quantity: ' || v_fruit_quantity);
    DBMS_OUTPUT.PUT_LINE('Fruit Category: ' || v_fruit_category);

END;
/
