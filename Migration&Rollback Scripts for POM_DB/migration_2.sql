-- MIGRATION 2

-- ALTERING INTERESTS TABLE

-- Since INTEREST TABLE HAS NO UNIQUELY IDENTIFIABLE ROWS,
-- there are no PKs or FKs, so it is read-only
-- CREATE NEW TABLE THAT SATISFIES DESIRED GOALS
-- GOALS --> 1. switch type to varchar(15)[];
-- 	         2.Migrate data correspondingly without duplicate IDs in columns.

-- FOLLOWING COMMANDS WILL DO WHAT WE NEED:
-- SELECT INTO...(select into allows to paste the selection into newly created table that is being created at the moment)
-- STRING_AGG...(helps to concatenate strings with <delimiter> --> in our case delimiter is ",")

-- DO THE SELECTION, CREATING & INSERTION ALL IN ONE
SELECT STUDENT_ID, STRING_AGG(INTEREST,', ') AS INTERESTS 
	INTO INTERESTS_2 
	FROM INTERESTS 
	GROUP BY STUDENT_ID 
	ORDER BY STUDENT_ID ASC;
-----------------------------------------------------------------------------------

	
	