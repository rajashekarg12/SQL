-- Step 1: Create the table with a column having a small size limit
CREATE TABLE PU_FD_TEST (
    COL_1 VARCHAR2(10) -- Column with a maximum length of 10 characters
);

-- Step 2: Attempt to insert a value longer than the allowed length
INSERT INTO PU_FD_TEST (COL_1) 
VALUES ('THIS_IS_TOO_LONG'); -- 14 characters, exceeding the limit

-- Step 3: Verify by selecting the data (if the insert fails, it won't reach this point)
SELECT * FROM PU_FD_TEST;
