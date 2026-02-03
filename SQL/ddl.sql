-- Data Defination Language

-- create)()
CREATE TABLE emp (
    empno NUMBER,
    ename VARCHAR2(20),
    sal NUMBER
);

-- rename()
RENAME emp TO employee;

-- Alter()
ALTER TABLE emp ADD deptno NUMBER;

ALTER TABLE emp MODIFY ename VARCHAR2(30);

ALTER TABLE emp DROP COLUMN deptno;

ALTER TABLE emp ADD CONSTRAINT emp_pk PRIMARY KEY (empno);

-- TRUNCATE
-- Deletes all records from emp
-- Table structure remains
-- Resets storage (high performance)
-- Faster than DELETE
TRUNCATE TABLE emp;

-- DROP
-- Deletes all records from emp
-- Deletes table structure
-- Table will no longer exist
-- Cannot be rolled back
DROP TABLE emp;


-- FLASHBACK
-- Used to restore a dropped table
-- Works only if table is in recycle bin
-- Data and structure are recovered
-- Oracle feature

FLASHBACK TABLE emp TO BEFORE DROP;


-- PURGE
-- Permanently removes a table from recycle bin
-- Table cannot be recovered using FLASHBACK
-- Frees database space immediately
-- Oracle feature

PURGE TABLE emp;
