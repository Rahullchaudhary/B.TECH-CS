-- QUERIES_1

-- Q1. Produce a combine table in which each student is combine with every other application
           -- By cardinality 
SELECT *
FROM STUDENT,
    APPLY
ORDER BY STUDENT.sID;
           -- By JOIN 
SELECT *
FROM STUDENT
    CROSS JOIN APPLY
ORDER BY STUDENT.sID;

-- Q2. Give Student ID, name, GPA and name of college and major each student applied to.
          -- By cardinality
SELECT STUDENT.sID,
    STUDENT.GPA,
    APPLY.cName,
    APPLY.major
FROM STUDENT,
    APPLY
WHERE STUDENT.sID = APPLY.sID
ORDER BY STUDENT.sID;
          -- By join
SELECT STUDENT.sID,
    STUDENT.GPA,
    APPLY.cName,
    APPLY.major
FROM STUDENT
    INNER JOIN APPLY ON STUDENT.sID = APPLY.sID
ORDER BY STUDENT.sID;

-- Q3.Find detail of applications who applied to California State.
          -- By cardinality
SELECT Apply.sID,
    Apply.cName,
    Apply.major,
    Apply.decision
FROM APPLY,
    COLLEGE
WHERE APPLY.cName = COLLEGE.collegeName
    AND College.state = 'CA'
ORDER BY APPLY.sID;
          -- By join
SELECT Apply.sID,
    Apply.cName,
    Apply.major,
    Apply.decision
FROM APPLY
    INNER JOIN COLLEGE ON APPLY.cName = COLLEGE.collegeName
WHERE College.state = 'CA'
ORDER BY APPLY.sID;

-- Q4. IDs, name, GPA of students and name of college with GPA > 3.7 applying to Stanford
        -- By cardinality
SELECT DISTINCT STUDENT.sID,
    STUDENT.sName,
    STUDENT.GPA,
    APPLY.cName
FROM STUDENT,
    APPLY
WHERE STUDENT.sID = APPLY.sID
    AND STUDENT.GPA > 3.7
    AND APPLY.cName = 'Stanford'
ORDER BY STUDENT.sID;
          -- By join
SELECT DISTINCT STUDENT.sID,
    STUDENT.sName,
    STUDENT.GPA,
    APPLY.cName
FROM STUDENT
    INNER JOIN APPLY ON STUDENT.sID = APPLY.sID
WHERE STUDENT.GPA > 3.7
    AND APPLY.cName = 'Stanford'
ORDER BY STUDENT.sID;

-- Q5. Find detail of Student who apply to CS major and their application are rejected
        -- By cardinality
SELECT STUDENT.sID,
    STUDENT.sName,
    STUDENT.GPA,
    STUDENT.sizeHS
FROM STUDENT,
    APPLY
WHERE STUDENT.sID = APPLY.sID
    AND APPLY.decision = 'N'
    AND APPLY.major = 'CS'
ORDER BY STUDENT.sID;
       -- By join
SELECT STUDENT.sID,
    STUDENT.sName,
    STUDENT.GPA,
    STUDENT.sizeHS
FROM STUDENT
    INNER JOIN APPLY ON STUDENT.sID = APPLY.sID
WHERE APPLY.decision = 'N'
    AND APPLY.major = 'CS'
ORDER BY STUDENT.sID;

-- Q6. Find detail of student and application who applied to colleges at New York
          -- By cardinality
SELECT Student.sID,
    Student.sName,
    Student.GPA,
    Student.sizeHS,
    Apply.cName,
    Apply.major,
    Apply.decision
FROM Student,
    Apply,
    College
WHERE Student.sID = Apply.sID
    AND Apply.cName = College.collegeName
    AND College.state = 'NY';
            -- By join
SELECT STUDENT.sID,
    STUDENT.sName,
    STUDENT.GPA,
    STUDENT.sizeHS,
    Apply.cName,
    Apply.major,
    Apply.decision
FROM STUDENT
    INNER JOIN APPLY ON STUDENT.sID = APPLY.sID
    INNER JOIN COLLEGE ON COLLEGE.collegeName = APPLY.cName
WHERE COLLEGE.state = 'NY'
ORDER BY STUDENT.sID;

-- Q7.Find detail of student who have not applied to any of college
     -- By Subquery
SELECT *
FROM STUDENT
WHERE STUDENT.sID NOT IN (
        SELECT DISTINCT sID
        FROM APPLY
    );

-- Q8. Find college where no student have applied
      -- By Subquery
SELECT COLLEGE.collegeName
FROM COLLEGE
WHERE COLLEGE.collegeName NOT IN (
        SELECT DISTINCT cName
        FROM APPLY
    );

-- Q9.Find sID who have only one application
SELECT sID
FROM APPLY
GROUP BY sID
HAVING COUNT(sID) = 1;

-- Q10. Find name and GPA of applicants who apply to any college whose enrollment is not more than 25000.
        -- By cardinality
SELECT DISTINCT STUDENT.sName, STUDENT.GPA
FROM STUDENT, Apply, College
WHERE STUDENT.sID = Apply.sID
    AND Apply.cName = COLLEGE.collegeName
    AND COLLEGE.enrollmeNT < 25000;
        -- By join
SELECT DISTINCT STUDENT.sName, STUDENT.GPA
FROM STUDENT
    INNER JOIN APPLY ON STUDENT.sID = APPLY.sID
    INNER JOIN COLLEGE ON APPLY.cName = COLLEGE.collegeName
WHERE sizeHS < 25000;

-- Q11. Find pair of students (sID) having same GPA. (each pair should occur just once in result)
SELECT sID1,
    sID2
FROM (
        SELECT STUDENT1.sID AS sID1,
            STUDENT2.sID AS sID2
        FROM Student AS Student1
            INNER JOIN STUDENT AS STUDENT2 ON STUDENT1.GPA = STUDENT2.GPA
        WHERE STUDENT1.sID != STUDENT2.sID
    ) AS C
WHERE sID1 < sID2
ORDER BY sID1;