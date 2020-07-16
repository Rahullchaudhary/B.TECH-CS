CREATE TABLE DEPENDENT
(
    ESSN INTEGER,
    Dependent_Name VARCHAR(20),
    Sex CHAR(1),
    BDate DATE,
    Relationship VARCHAR(20),
    CONSTRAINT PRIMARY KEY (ESSN, Dependent_Name)
);