-- MIGRATION

-- ALTERING STUDENTS TABLE --> 

-- Adding new column and copying values from ST_ID to STUDENT_ID in TABLE STUDENTS
ALTER TABLE STUDENTS
    ADD COLUMN STUDENT_ID numeric;

-- copying values from ST_ID into STUDENT_ID
UPDATE STUDENTS 
	SET STUDENT_ID = ST_ID;
	
-- modifying not null values to prevent NOT NULL errors
ALTER TABLE STUDENTS
	ALTER STUDENT_ID SET NOT NULL;

-- changing length can lead to a data loss due to a truncation; 
--however, since we are increasing the size 
--I don't think that it is dangerous so I just apply the change right away

-- changing length of ST_NAME from 15 to 30 in TABLE STUDENTS
ALTER TABLE STUDENTS
    ALTER COLUMN ST_NAME TYPE varchar(30);


-- changing length of ST_LAST from 15 to 30 in TABLE STUDENTS
ALTER TABLE STUDENTS
    ALTER COLUMN ST_LAST TYPE varchar(30);
	
-----------------------------------------------------------------

	
	
	
	
	
	
	
	
