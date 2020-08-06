-- QURIES 
-- THREE VERSIONS (CROSS, NATURAL, INNER) JOIN

-- Q12. Find student and major he / she applied to.
            -- By cardinality
SELECT STUDENT.sName, APPLY.major
FROM STUDENT, APPLY
WHERE STUDENT.sID = APPLY.sID
GROUP BY STUDENT.sName, APPLY.major;
            -- By natural join
SELECT STUDENT.sName, APPLY.major
FROM STUDENT
    NATURAL JOIN APPLY
GROUP BY STUDENT.sName, APPLY.major;
            -- By inner
SELECT STUDENT.sName, APPLY.major
FROM STUDENT
    INNER JOIN APPLY ON STUDENT.sID = APPLY.sID
GROUP BY STUDENT.sName, APPLY.major;

-- Q13. Find detail of student who came from high school have size less than 20000 and applied to CS at Stanford.
            -- By cardinality
SELECT
    STUDENT.sID, STUDENT.sName, STUDENT.GPA, STUDENT.sizeHS
FROM STUDENT, APPLY
WHERE STUDENT.sID = APPLY.sID
    AND STUDENT.sizeHS < 20000
    AND APPLY.major = 'CS'
    AND APPLY.cName = 'Stanford';
            -- By natural join
SELECT 
    STUDENT.sID, STUDENT.sName, STUDENT.GPA, STUDENT.sizeHS
FROM STUDENT
    NATURAL JOIN APPLY
WHERE STUDENT.sizeHS < 20000
    AND APPLY.major = 'CS'
    AND APPLY.cName = 'Stanford';
            -- By inner join
SELECT 
    STUDENT.sID, STUDENT.sName, STUDENT.GPA, STUDENT.sizeHS
FROM STUDENT
    INNER JOIN APPLY ON STUDENT.sID = APPLY.sID
WHERE STUDENT.sizeHS < 20000
    AND APPLY.major = 'CS'
    AND APPLY.cName = 'Stanford';

-- Q14. Provide complete detail of each student where they applied what major they applied to what was the decision
--      and complete detail of cOLLEGE they applied.
            -- By cardinality
SELECT *
FROM STUDENT, APPLY, COLLEGE
WHERE STUDENT.sID = APPLY.sID
    AND APPLY.cName = COLLEGE.collegeName
ORDER BY STUDENT.sName, STUDENT.sID;
            -- By natural join
SELECT *
FROM STUDENT
    NATURAL JOIN APPLY
    INNER JOIN COLLEGE ON APPLY.cName = COLLEGE.collegeName
ORDER BY STUDENT.sName, STUDENT.sID;
            -- By inner join
SELECT *
FROM STUDENT
    INNER JOIN APPLY ON APPLY.sID = STUDENT.sID
    INNER JOIN COLLEGE ON APPLY.cName = COLLEGE.collegeName
ORDER BY STUDENT.sName, STUDENT.sID;

-- Q15. Names and GPAs of students with HS>1000 who applied to CS and were rejected.
            -- By cardinality
SELECT 
    STUDENT.sName, STUDENT.GPA
FROM
    STUDENT, APPLY
WHERE
    STUDENT.sID = APPLY.sID
        AND STUDENT.sizeHS > 1000
        AND APPLY.major = 'CS'
        AND APPLY.decision = 'N'
ORDER BY STUDENT.sName , STUDENT.sID;
            -- By natural join
SELECT 
    STUDENT.sName, STUDENT.GPA
FROM
    STUDENT  
    NATURAL JOIN APPLY
WHERE
    STUDENT.sizeHS > 1000
        AND APPLY.major = 'CS'
        AND APPLY.decision = 'N'
ORDER BY STUDENT.sName , STUDENT.sID;
            -- By inner join
SELECT 
    STUDENT.sName, STUDENT.GPA
FROM
    STUDENT
    INNER JOIN
    APPLY ON STUDENT.sID = APPLY.sID
WHERE
    STUDENT.sizeHS > 1000
        AND APPLY.major = 'CS'
        AND APPLY.decision = 'N'
ORDER BY STUDENT.sName , STUDENT.sID;

-- Q16. Names and GPAs of students with HS>1000 who applied to CS at college with enr>20,000 and were rejected
            -- By cardinality
SELECT 
    STUDENT.sName, STUDENT.GPA
FROM
    STUDENT,
    APPLY,
    COLLEGE
WHERE
    STUDENT.sID = APPLY.sID
        AND APPLY.cName = COLLEGE.cOLLEGEName
        AND STUDENT.sizeHS > 1000
        AND APPLY.major = 'CS'
        AND COLLEGE.enrollment > 20000
        AND APPLY.decision = 'N'
ORDER BY STUDENT.sName , STUDENT.sID;
            -- By natural join
SELECT 
    STUDENT.sName, STUDENT.GPA
FROM
    STUDENT
    NATURAL JOIN APPLY
    INNER JOIN COLLEGE ON APPLY.cName = COLLEGE.collegeName
WHERE
    STUDENT.sizeHS > 1000
        AND APPLY.major = 'CS'
        AND COLLEGE.enrollment > 20000
        AND APPLY.decision = 'N'
ORDER BY STUDENT.sName , STUDENT.sID;
            -- By inner join
SELECT 
    STUDENT.sName, STUDENT.GPA
FROM
    STUDENT
    INNER JOIN APPLY ON STUDENT.sID = APPLY.sID
    INNER JOIN COLLEGE ON APPLY.cName = COLLEGE.collegeName
WHERE
    STUDENT.sizeHS > 1000
        AND APPLY.major = 'CS'
        AND COLLEGE.enrollment > 20000
        AND APPLY.decision = 'N'
ORDER BY STUDENT.sName , STUDENT.sID;