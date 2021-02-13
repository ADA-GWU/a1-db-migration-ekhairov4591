-- Since INTERESTS TABLE OBTAINED UNIQUE VALUES (IDs) we can set up PKs and FKs between STUDENTS & INTERESTS TABLE

-- adding UNIQUE CONSTRAINT ON IDs for KEYS in STUDENTS
ALTER TABLE STUDENTS
	ADD CONSTRAINT unique_id_students UNIQUE (student_id);
	
-- adding UNIQUE CONSTRAINT ON IDs for KEYS in INTERESTS
ALTER TABLE INTERESTS
	ADD CONSTRAINT unique_id_interests UNIQUE (student_id);

-- setting PK for STUDENTS
ALTER TABLE STUDENTS
	ADD PRIMARY KEY (student_id);
	
-- setting PK for INTERESTS
ALTER TABLE INTERESTS
	ADD PRIMARY KEY (student_id);

-- Creating FK for INTERESTS TABLE
ALTER TABLE INTERESTS
	ADD FOREIGN KEY (student_id) REFERENCES STUDENTS(student_id);
	
--------------------------------------------------------------------------------