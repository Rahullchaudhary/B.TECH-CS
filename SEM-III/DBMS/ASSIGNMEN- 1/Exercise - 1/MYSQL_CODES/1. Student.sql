CREATE TABLE STUDENT
(
    sID INTEGER,
    sName VARCHAR(20),
    GPA FLOAT,
    sizeHS INTEGER,
    DoB DATE
);

INSERT INTO STUDENT VALUES
	(123, 'Amy', 3.9, 1000, STR_TO_DATE("26-JUN-96","%d-%M-%y")),
    (234, 'Bob', 3.6, 1500, STR_TO_DATE("7-Apr-95","%d-%M-%y")),
    (345, 'Craig', 3.5, 500, STR_TO_DATE("4-Feb-95","%d-%M-%y")),
    (456, 'Doris', 3.9, 1000, STR_TO_DATE("24-Jul-97","%d-%M-%y")),
    (567, 'Edward', 2.9, 2000, STR_TO_DATE("21-Dec-96","%d-%M-%y")),
    (678, 'Fay', 3.8, 200, STR_TO_DATE("27-Aug-96","%d-%M-%y")),
    (789, 'Gary', 3.4, 800, STR_TO_DATE("8-Oct-96","%d-%M-%y")),
    (987, 'Helen', 3.7, 800, STR_TO_DATE("27-Mar-97","%d-%M-%y")),
    (876, 'Irene', 3.9, 400, STR_TO_DATE("7-Mar-96","%d-%M-%y")),
    (765, 'Jay', 2.9, 1500, STR_TO_DATE("8-Aug-98","%d-%M-%y")),
    (654, 'Amy', 3.9, 1000, STR_TO_DATE("26-May-96","%d-%M-%y")),
    (543, 'Craig', 3.4, 2000, STR_TO_DATE("27-Aug-98","%d-%M-%y"));
