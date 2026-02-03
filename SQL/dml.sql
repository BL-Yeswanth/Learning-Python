-- Data Manipulation Language
-- INSERT
-- Used to add new records into a table
-- Affects data only
-- Can be rolled back

INSERT INTO emp VALUES (101, 'SMITH', 3000);

-- UPDATE
-- Used to modify existing records
-- WHERE clause recommended
-- Can be rolled back

UPDATE emp
SET sal = 3500
WHERE empno = 101;


-- DELETE
-- Used to remove records from a table
-- WHERE clause optional
-- Can be rolled back

DELETE FROM emp
WHERE empno = 101;
