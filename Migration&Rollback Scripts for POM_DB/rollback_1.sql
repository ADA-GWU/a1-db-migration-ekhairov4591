-- ROLLBACK_1

-- Restoring ST_ID
ALTER TABLE STUDENTS
	DROP COLUMN STUDENT_ID;
	
-- Reverting Length Changes
ALTER TABLE STUDENTS
    ALTER COLUMN ST_NAME TYPE varchar(15);

ALTER TABLE STUDENTS
    ALTER COLUMN ST_LAST TYPE varchar(15);
	
	