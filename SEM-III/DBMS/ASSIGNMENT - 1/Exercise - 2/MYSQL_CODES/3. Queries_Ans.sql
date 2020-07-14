-- Query 1
SELECT ename,hiredate FROM EMPLOYEE
ORDER BY hiredate DESC;

-- Query 2
SELECT ename,job FROM EMPLOYEE
ORDER BY job;

-- Query 3
SELECT ename,job FROM EMPLOYEE
WHERE job = 'ENGINEER'
ORDER BY ename;

-- Query 4
SELECT job,ename,sal,comm FROM EMPLOYEE
WHERE sal > 50000
ORDER BY sal DESC;

-- Query 5
SELECT job,ename,sal,comm FROM EMPLOYEE
WHERE comm IS NOT NULL
ORDER BY sal DESC;

-- Query 6
SELECT job,ename,sal,comm FROM EMPLOYEE
WHERE ename LIKE 'H%';

-- Query 7
SELECT job,ename,sal,comm FROM EMPLOYEE
WHERE ename LIKE 'H%' AND comm IS NULL;

-- Query 8
SELECT job,ename FROM EMPLOYEE
WHERE dept = 3;

-- Query 9
SELECT dname,loc FROM DEPT
WHERE deptno = 3;

-- Query 10
SELECT job,ename,dept,sal FROM EMPLOYEE
ORDER BY dept,sal DESC;
