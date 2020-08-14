-- QUERIES:

-- Q1. Count the total number of Students.
SELECT COUNT(*) AS Total_Students
FROM STUDENT;

-- Q2. Calculate the average GPA of all Student.
SELECT ROUND(AVG(GPA), 2) AS average_GPA
FROM STUDENT;
-- OR
SELECT SUM(GPA) / COUNT(*) AS Average_GPA
FROM STUDENT;

-- Q3. Determine the minimum and maximum GPA. Rename the titles as ‘max_GPA’ and ‘min_GPA’ respectively.
SELECT MAX(GPA) AS max_GPA,
    MIN(GPA) AS min_GPA
FROM STUDENT;

-- Q4. Count the number of students having GPA greater than or equal to 3.7.
SELECT COUNT(GPA) AS Number_Students
FROM STUDENT
WHERE GPA >= 3.7;

-- Q5. Find Maximum, Average, Minimum, total GPA of all student.
SELECT MAX(GPA) AS max_GPA,
    MIN(GPA) AS min_GPA,
    ROUND(AVG(GPA), 2) AS average_GPA,
    SUM(GPA) AS total_GPA
FROM STUDENT;

-- Q6. Find total number of colleges in our Application Database.
SELECT COUNT(DISTINCT cName) AS "Total no. of College"
FROM APPLY;

-- Q7. Find how many different majors student had applied in.
SELECT COUNT(DISTINCT major) AS Distinct_Major
FROM APPLY;

-- Q8. Find total no.of Applications in our Application System's Database.
SELECT COUNT(*) AS Total_Applications
FROM APPLY;

-- Q9. Find average of all distinct GPA.
SELECT ROUND(AVG(DISTINCT GPA), 2) AS "Distinct_avg(GPA)"
FROM STUDENT;

-- Q10. Display the total number of application accepted.
SELECT COUNT(decision) AS "Accepted_Application(No.)"
FROM APPLY
GROUP BY decision
HAVING decision = 'Y';

-- Q11. Find number of students having GPA>3.4 and coming from high school having size>1000.
SELECT COUNT(*) AS "No._Students"
FROM STUDENT
WHERE GPA > 3.4
    AND sizeHS > 1000;

-- Q12. Find how many student applied to ‘ marine biology ’.
SELECT COUNT(major) AS "No._Students"
FROM APPLY
GROUP BY major
HAVING major = 'marine biology';

-- Q13. Find how many applications were rejected and accepted by the colleges.
SELECT decision,
    COUNT(*) AS "Y/N(No.)"
FROM APPLY
GROUP BY decision
ORDER BY decision;

-- Q14. Find how many students applied to a particular major. (show count(sid) as No_of_applications).
SELECT major,
    COUNT(*) AS No_of_applications
FROM APPLY
GROUP BY major
ORDER BY major;

-- Q15. Find number of applications received by particular college.
SELECT cName,
    COUNT(*) AS No_of_applications
FROM APPLY
GROUP BY cName
ORDER BY No_of_applications;

-- Q16. Find number of applications received in a particular major at a particular college.
SELECT cName,
    major,
    COUNT(*) AS No_of_applications
FROM APPLY
GROUP BY cName,
    major
ORDER BY No_of_applications;

-- Q17. Give the college name and major, where number of applications received are greater than or equal to 2.
SELECT cName,
    major,
    COUNT(*) AS No_of_applications
FROM APPLY
GROUP BY cName,
    major
HAVING COUNT(*) >= 2
ORDER BY cName;

-- Q18. Give the name and no of applications of all those colleges which receives applications from 3 or more students.
SELECT cName,
    COUNT(*) AS No_of_applications
FROM APPLY
GROUP BY cName
HAVING COUNT(cName) > 3
ORDER BY No_of_applications;

-- Q19. Give state and number of colleges of a state that has more than 1 college.
SELECT state,
    COUNT(*) AS No_of_applications
FROM COLLEGE
GROUP BY state
HAVING COUNT(state) > 1
ORDER BY state;

-- Q20. Find the name of students that are duplicate.
SELECT sName
FROM STUDENT
GROUP BY sName
HAVING COUNT(sName) >= 2;

-- Q21. Find how many applications are filed by each student. 
-- [Hint: use left join as we need information about all 12 students here. If they applied no where than show zero in front of them]
SELECT STUDENT.sID,
    sName,
    COUNT(APPLY.sID) AS "applied_No."
FROM STUDENT
    LEFT JOIN APPLY ON STUDENT.sID = APPLY.sID
GROUP BY STUDENT.sID
ORDER BY "applied_No.";

-- Q22. Provide name of students that file 3 or more applications.
-- By join
SELECT sName
FROM STUDENT
    NATURAl JOIN APPLY
WHERE sID = sID
GROUP BY sName
HAVING COUNT(sID) >= 3
ORDER BY sName;
-- By cartesian
SELECT sName
FROM STUDENT,
    APPLY
WHERE APPLY.sID = STUDENT.sID
GROUP BY sName
HAVING COUNT(STUDENT.sID) >= 3
ORDER BY sName;

-- Q23. Provide name of student who have not applied to any college.
SELECT sName
FROM STUDENT
    LEFT JOIN APPLY ON STUDENT.sID = APPLY.sID
GROUP BY STUDENT.sID
HAVING COUNT(APPLY.sID) = 0
ORDER BY sName,
    COUNT(*) DESC;

-- Q24. Find maximum GPA, Average GPA, and minimum GPA among applicants of each college.
-- (i.e. say sID 123, 324 and 987 had applied to Berkley then compute and display max GPA among these three)
SELECT cName,
    ROUND(MAX(GPA), 2) AS Average_GPA,
    MIN(GPA) AS Min_GPA,
    MAX(GPA) AS Max_GPA
FROM APPLY
    NATURAL JOIN STUDENT
WHERE sID = sID
GROUP BY cName
ORDER BY cName;

-- Q25. Find how many student have same GPA among all students.
-- (provide this frequency in two column table as GPA 3.9 is 4 times, GPA 2.9 is 2 times )
SELECT GPA,
    COUNT(*) AS Repeated_Times
FROM STUDENT
GROUP BY GPA
ORDER BY Repeated_Times;

-- Q26. Find how many student have their name started from A, B or C.
SELECT sName,
    COUNT(*) AS "start_with(times)"
FROM STUDENT
GROUP BY sName
HAVING sName LIKE 'A%'
    OR sName LIKE 'B%'
    OR sName LIKE 'C%'
ORDER BY sName;