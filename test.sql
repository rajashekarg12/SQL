-- Step 1: Create the table with a column having a small size limit
CREATE TABLE TEST_AV_89 (
    COL_1 VARCHAR2(10) -- Column with a maximum length of 10 characters
);

-- Step 2: Attempt to insert a value longer than the allowed length
INSERT INTO TEST_AV_89 (COL_1) 
VALUES ('THIS_IS_TOO_LONGllllllll'); -- 14 characters, exceeding the limit
