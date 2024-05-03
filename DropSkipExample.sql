
CREATE TABLE Employee (
    ID INT PRIMARY KEY,
    Name VARCHAR(20),
    Age INT,
    Salary DECIMAL(18, 2)
);


-- Now, even if NonExistentTable table does not exist, the following DROP statement will not cause an error

DROP TABLE NonExistentTable;
--if(FD_SQLPLUS_IGNORE_DROP_FAILURE== false)
--SQLPlus exit here with return code error

--if(FD_SQLPLUS_IGNORE_DROP_FAILURE== true)
-- control skips above error and continue to next statement


DROP TABLE Employee;