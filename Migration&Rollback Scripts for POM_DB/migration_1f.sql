-- MIGRATION_1 - FINALIZATION

-- ALTERING STUDENTS TABLE --> 

-- dropping ST_ID in TABLE STUDENTS
ALTER TABLE STUDENTS 	
	DROP COLUMN ST_ID;

---------------------------------------------------