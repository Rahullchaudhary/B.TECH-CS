/* Query 1. Add cName as Primary key in College. */

ALTER TABLE COLLEGE
ADD CONSTRAINT cName_PK PRIMARY KEY (cName);

/* Query 2. Add sID as Primarykey in Student. */

ALTER TABLE STUDENT
ADD CONSTRAINT sID_PK PRIMARY KEY (sID);

/* Query 3. Add sID, cName, major as Primarykey in Apply. */

ALTER TABLE APPLY
ADD CONSTRAINT all_PK PRIMARY KEY (sID, cName, major);

/* Query 4. Make sID in Apply foreign key referring table student and cName referring table college. */

ALTER TABLE APPLY
ADD CONSTRAINT sID_FK FOREIGN KEY (sID) REFERENCES STUDENT (sID);
ALTER TABLE APPLY
ADD CONSTRAINT cName_FK FOREIGN KEY (cName) REFERENCES COLLEGE (cName);

/* Query 5. Increase data type size of major from 20 to 25. */ 

ALTER TABLE APPLY
MODIFY major VARCHAR(25);

/* Query 6. Add a new column decision in the Apply table keeping a constraint of not null for 
   this column with data type varchar2(3). */

ALTER TABLE APPLY
ADD decision VARCHAR(3) NOT NULL;

/* Query 7. Change data type of decision in Apply to char(1). */

ALTER TABLE APPLY
MODIFY decision CHAR(1);

/* Query 8. Drop foreign key on column name cName from Apply table. */

ALTER TABLE APPLY
DROP CONSTRAINT cName_FK;

/* Query 9. Remove column sizeHS from Student table. */

ALTER TABLE STUDENT
DROP COLUMN sizeHS;

/* Query 10. Drop primary key from College. */

ALTER TABLE COLLEGE
DROP CONSTRAINT cName_PK ;

/* Query 11. Make cName, major unique pairwise such as Stanford CS, Stanford EE. */

CREATE UNIQUE INDEX uqe_key ON APPLY (cName, major);

/* Query 12. Add cName as Foreign Key in Apply table referring table College using on delete cascade. */

ALTER TABLE COLLEGE
ADD CONSTRAINT cName_PK PRIMARY KEY (cName);

ALTER TABLE APPLY
ADD CONSTRAINT cName_FK
FOREIGN KEY (cName) REFERENCES COLLEGE (cName)
ON DELETE CASCADE;

/* Query 13. Modify foreign key on sID in Apply table to foreign key on delete set null. */
ALTER TABLE APPLY
DROP PRIMARY KEY
DROP CONSTRAINT sID_FK
MODIFY sID INTEGER;

ALTER TABLE APPLY
ADD CONSTRAINT sID_FK 
FOREIGN KEY (sID) REFERENCES STUDENT(sID)
ON DELETE SET NULL;

/* Query 14. Rename column enrollment to enroll in College Table. */

ALTER TABLE COLLEGE
RENAME COLUMN enrollment TO enroll;