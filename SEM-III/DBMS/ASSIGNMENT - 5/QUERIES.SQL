-- Q1. IDs and names of students who have applied to major in CS at some college.sID
SELECT sID, sName FROM STUDENT
WHERE sID IN (
       SELECT sID FROM APPLY
        WHERE major = 'CS'
    );

-- Q2. Find ID and name of student having same high school size as Jay.
SELECT sID, sName FROM STUDENT
WHERE sizeHS IN (
        SELECT sizeHS FROM STUDENT
        WHERE sName = 'Jay'
    );

-- Q3. Find ID and name of student having same high school size as Jay but result should not include Jay.
SELECT sID, sName FROM STUDENT
WHERE sizeHS IN (
        SELECT sizeHS FROM STUDENT
        WHERE sName IN ('Jay'))
    AND sName NOT IN ('Jay');

-- Q4. Find the name of student with their GPA and Sid whose GPA not equal to GPA of Irene?
SELECT sID, sName, GPA FROM STUDENT
WHERE GPA IN (
        SELECT GPA FROM STUDENT
        WHERE GPA NOT IN (
                SELECT GPA FROM STUDENT
                WHERE sName = 'Irene')
    );

-- Q5. Find college where any student having their name started from J have applied?
SELECT cName FROM APPLY
WHERE sID IN (
        SELECT sID FROM STUDENT
        WHERE sName LIKE 'J%'
    );

-- Q6. Find all different major where Irene has applied?
SELECT DISTINCT major FROM APPLY
WHERE sID IN (
        SELECT sID FROM STUDENT
        WHERE sName = 'Irene'
    );

-- Q7. Find IDs of student and major who applied in any of major Irene had applied to?
SELECT sID, major FROM APPLY
WHERE major IN(
        SELECT major FROM APPLY
        WHERE sID IN(
                SELECT sID FROM STUDENT
                WHERE sName = 'Irene')
    );

-- Q8. Find IDs of student and major who applied in any of major Irene had applied to? 
--     But this time exclude Irene sID from the list.
SELECT sID, major FROM APPLY
WHERE major IN(
        SELECT major FROM APPLY
        WHERE sID IN(
                SELECT sID FROM STUDENT
                WHERE sName = 'Irene' ))
    AND sID NOT IN (
        SELECT sID
        FROM STUDENT
        WHERE sName = 'Irene'
    );

-- Q9. Give the number of colleges Jay applied to? (Remember count each college once no matter 
--     if he applied to same college twice with different major)
SELECT COUNT(cName) AS "No._college"
FROM APPLY
WHERE sID IN (
        SELECT sID FROM STUDENT
        WHERE sName = 'Jay'
    );

--Q10. Find sID of student who applied to more or same number of college where Jay has applied?
SELECT sID FROM APPLY
GROUP BY sID
HAVING COUNT(sID) >= (
        SELECT COUNT(sID) FROM APPLY
        WHERE sID IN (
                SELECT sID FROM STUDENT
                WHERE sName = 'Jay')
    );


















