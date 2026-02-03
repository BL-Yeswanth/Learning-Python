-- Transaction Control Language

-- COMMIT
-- Saves all DML changes permanently
-- Cannot be rolled back after commit

COMMIT;


-- ROLLBACK
-- Undoes DML changes
-- Works only before COMMIT

ROLLBACK;


-- SAVEPOINT
-- Creates a point within a transaction
-- Used for partial rollback

SAVEPOINT sp1;

-- Rollback to savepoint
ROLLBACK TO sp1;


-- DCL - Data Control Language

-- GRANT
-- Gives privileges to a user
-- Example: allow SELECT on emp table

GRANT SELECT, INSERT ON emp TO scott;

-- REVOKE
-- Removes previously granted privileges
-- Example: remove SELECT privilege from user

REVOKE SELECT ON emp FROM scott;
