/* Query 1. Employee Name and Hire Date sorted by Hire Date (Recent to Old). */

SELECT ENAME, HIREDATE 
FROM EMPLOYEE
ORDER BY HIREDATE DESC;

/* Query 2. Employee Name and Job sorted by Job (Alphabetically). */

SELECT ENAME, JOB 
FROM EMPLOYEE 
ORDER BY JOB;

/* Query 3. Employee Name and Job for all Engineers, sorted by Employee Name
   Alphabetically. */
   
SELECT ENAME, JOB 
FROM EMPLOYEE
WHERE JOB = 'ENGINEER' ORDER BY ENAME;

/* Query 4. Job, Employee Name, Salary and Commission for employees with salary 
   over 50000 sorted by Salary (Largest to Smallest). */
   
SELECT JOB, ENAME, SAL, COMM 
FROM EMPLOYEE
WHERE SAL > 50000 ORDER  BY SAL DESC;

/* Query 5. Job, Employee Name, Salary and Commission for employees with 
   a Commission sorted by Salary (Largest to Smallest). */ 
   
SELECT JOB, ENAME, SAL, COMM
FROM EMPLOYEE 
WHERE COMM IS NOT NULL
ORDER BY SAL DESC;
   
/* Query 6. Job, Employee Name, Salary and Commission for employees whose name starts with the letter H. */

SELECT JOB, ENAME, SAL, COMM
FROM EMPLOYEE
WHERE ENAME LIKE 'H%';

/* Query 7. Job, Employee Name, Salary and Commission for employees whose name starts with the letter H and who do not get commission. */

SELECT JOB, ENAME, SAL, COMM
FROM EMPLOYEE
WHERE ENAME LIKE 'H%' AND COMM IS NULL;

/* Query 8. Job, Employee Name for employees in Dept No. 3. */

SELECT JOB, ENAME
FROM EMPLOYEE
WHERE DEPT = 3;

/* Query 9. Dept Name and Loc for employees in Dept No. 3. */

SELECT DNAME, LOC
FROM DEPT
WHERE DEPTNO = 3;

/* Query 10. Job, Employee Name, Dept, Salary sorted first by Dept (Smallest to Largest) and then Salary (Largest to Smallest). */

SELECT JOB, ENAME, DEPT, SAL
FROM EMPLOYEE
ORDER BY DEPT, SAL DESC;