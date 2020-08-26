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

-- Q10. Find sID of student who applied to more or same number of college where Jay has applied?
SELECT sID FROM APPLY
GROUP BY sID
HAVING COUNT(sID) >= (
        SELECT COUNT(sID) FROM APPLY
        WHERE sID IN (
                SELECT sID FROM STUDENT
                WHERE sName = 'Jay')
    );

-- Q11. Find details of Students who applied to major CS but not applied to major EE? (sID 987, 876, 543 should only be include in result)
SELECT *
FROM STUDENT WHERE sID IN(
        SELECT sID FROM APPLY
        WHERE major = 'CS'
    )
    AND sID NOT IN(
        SELECT sID FROM APPLY
        WHERE major = 'EE'
    );

-- Q12. All colleges such that some other college is in same state. (Cornell should not be part of result as no other college in New York Hint: use exists)
SELECT cName FROM COLLEGE AS OUTER_QUERY
WHERE EXISTS(
        SELECT cName FROM COLLEGE
        WHERE state = OUTER_QUERY.state
        AND cName != OUTER_QUERY.cName
    );
-- OR
SELECT cName FROM COLLEGE
WHERE state IN (
        SELECT state FROM COLLEGE
        GROUP BY state
        HAVING COUNT(state) >= 2
    );

-- Q13. Find the college with highest enrollment.
SELECT cName FROM APPLY
GROUP BY cName
HAVING COUNT(DISTINCT sID) IN (
        SELECT MAX(ENROLLMENT_COUNT)
        FROM (
                SELECT COUNT(DISTINCT sID) AS ENROLLMENT_COUNT
                FROM APPLY
                GROUP BY cName
            ) AS COUNT_TABLE
    );

-- Q14. Find name of student having lowest GPA.
SELECT sName FROM STUDENT
WHERE GPA IN(
        SELECT MIN(GPA) FROM STUDENT
    );

-- Q15. Find the most popular major.
SELECT major FROM APPLY
GROUP BY major
HAVING COUNT(DISTINCT sID) IN (
        SELECT MAX(POPULAR_MAJOR)
        FROM (
                SELECT COUNT(DISTINCT sID) AS POPULAR_MAJOR
                FROM APPLY
                GROUP BY major
            ) AS COUNT_TABLE
    );

-- Q16. Find sID, sName, sizeHS of all students NOT from smallest HS.
SELECT sID, sName, sizeHS
FROM STUDENT
WHERE sizeHS <> (
        SELECT MIN(sizeHS) FROM STUDENT
    );
    