CREATE TABLE t1 (a TINYINT NOT NULL, b CHAR(4));
INSERT INTO t1 VALUES (300, 'abcd');
--In this example, the INSERT statement tries to insert a value of 300 into a TINYINT column, which has a maximum value of 127. This will cause a data truncation warning. 
