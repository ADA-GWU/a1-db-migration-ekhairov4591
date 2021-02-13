-- MIGRATION_2 - FINALIZATION

-- DROPPING OLD INTERESTS TABLE 

DROP TABLE INTERESTS;

-- RENAME NEW REPLACING TABLE
ALTER TABLE INTERESTS_2 
	RENAME TO INTERESTS;

-- TABLE INTERESTS WILL REMAIN READ-ONLY SINCE THERE ARE NO PKs or FKs in it
-- Post Migration Key Setup (PMKS.sql)is optinal and can fix it
--------------------------------------------------------------------------------
