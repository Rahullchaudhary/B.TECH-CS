CREATE TABLE EMPLOYEE
(
	empno INTEGER,
    ename VARCHAR(20),
    job VARCHAR(20),
    mgr INTEGER,
    hiredate DATE,
    sal INTEGER,
    comm INTEGER,
    dept INTEGER
);

INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (1,'JOHNSON','ADMIN',6,STR_TO_DATE("12/17/1990","%m/%d/%Y"),18000,4);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, comm, dept)
VALUES
	   (2,'HARDING','MANAGER',9,STR_TO_DATE("2/2/1998","%m/%d/%Y"),52000,300,3);

INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, comm, dept)
VALUES
	   (3,'TAFT','SALES I',2,STR_TO_DATE("1/2/1996","%m/%d/%Y"),25000,500,3);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (4,'HOOVER','SALES I',2,STR_TO_DATE("4/2/1990","%m/%d/%Y"),27000,3);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, comm, dept)
VALUES
	   (5,'LINCOLN','TECH',6,STR_TO_DATE("6/23/1994","%m/%d/%Y"),22500,1400,4);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (6,'GARFIELD','MANAGER',9,STR_TO_DATE("5/1/1993","%m/%d/%Y"),54000,4);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (7,'POLK','TECH',6,STR_TO_DATE("9/22/1997","%m/%d/%Y"),25000,4);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (8,'GRANT','ENGINEER',10,STR_TO_DATE("3/30/1997","%m/%d/%Y"),32000,2);
       
INSERT INTO EMPLOYEE (empno, ename, job, hiredate, sal, dept)
VALUES
	   (9,'JACKSON','CEO',STR_TO_DATE("1/1/1990","%m/%d/%Y"),75000,4);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (10,'FILLMORE','MANAGER',9,STR_TO_DATE("8/9/1994","%m/%d/%Y"),56000,2);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (11,'ADAMS','ENGINEER',10,STR_TO_DATE("3/15/1996","%m/%d/%Y"),34000,2);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (12,'WASHINGTON','ADMIN',6,STR_TO_DATE("4/16/1998","%m/%d/%Y"),18000,4);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (13,'MONROE','ENGINEER',10,STR_TO_DATE("12/3/2000","%m/%d/%Y"),30000,2);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (14,'ROOSEVELT','CPA',9,STR_TO_DATE("10/12/1995","%m/%d/%Y"),35000,1);
       
INSERT INTO EMPLOYEE (empno, ename, job, mgr, hiredate, sal, dept)
VALUES
	   (15,'HANCOCK','SALES I',2,STR_TO_DATE("3/2/1990","%m/%d/%Y"),27500,3);
