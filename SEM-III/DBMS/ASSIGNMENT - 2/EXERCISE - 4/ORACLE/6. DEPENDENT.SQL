CREATE TABLE DEPENDENT
(
     ESSN INTEGER,
     Dependent_Name VARCHAR(10),
     Sex CHAR(1),
     BDate DATE,
     Relationship VARCHAR(25),
     CONSTRAINT Dependent_PK PRIMARY KEY (ESSN, Dependent_Name)
);