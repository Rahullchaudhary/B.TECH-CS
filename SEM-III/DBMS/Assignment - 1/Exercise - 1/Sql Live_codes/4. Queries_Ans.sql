/* Query 1. List the student name, dob from student table. */
select sName, DoB 
from student;

/* Query 2. List the name of student scoring more than 3.7 in GPA. */
select sName 
from student 
where GPA>3.7;

/* Query 3. List the name of student whose High School size is atleast 1000 and born after 1996. 
   [Hint: check DoB greater than 31st December, 1996] */
select sName 
from student 
where sizeHS>=1000 and Dob>'31-Dec-1996';

/* Query 4. List the name of student who are scoring GPA in between 2.9 and 3.9 */
select sName 
from student
where GPA between 2.9 and 3.9;

/* Query 5. List all the details of colleges who situated in MA. */
select * 
from College 
where state = 'MA';

/* Query 6. List the students who are scored more than 2.0 but less than 3.5 */
select sName 
from student
where GPA>2.0 and GPA<3.5;

/* Query 7. List the students who have born after 1st Jul 96 in the order of the Date of Birth. */
select sName from student
where DoB>'1-jul-1996'
order by DoB;

/* Query 8. List the sID, cName, decision of applications that are accepted. */
select sID,cName,decision
from Apply
where decision = 'Y';

/* Query 9. List the sID, cName of applications which are filled at Stanford. */
select sID,cName 
from Apply
where cName = 'Stanford';

/* Query 10. List the colleges that that has enrollment greater than 10001. */
select * 
from College
where enrollment > 10001;

/* Query 11. List the colleges not in California. */
select * 
from College
where state != 'CA';

/* Query 12. List names of all student who came from high school having 
   size greater than 17000 and scored GPA less than 3.8 */
select sName 
from student
where sizeHS > 1700 and GPA < 3.8;

/* Query 13. Display the description of the Student table. */
describe student;
 --or
select * 
from all_tab_columns
where table_name = 'STUDENT';               /*  (in oracle sql live) */


/* Query 14. Display the details of all students. */
select *
from student;

/* Query 15. Display unique majors. */
select distinct major 
from Apply;

/* Query 16. List the student names those are having three characters in their Names. */ 
select sName 
from student
where sName like '___';

/* Query 17. List the student names those are starting with ‘H’ and with five characters. */
select sName 
from student
where sName like 'H____';

/* Query 18. List the student names those are having third character and fifth char. must be ‘e’. */
select sName 
from student
where sName like '__e_e%';

/* Query 19. List the student names ending with ‘y’. */
select sName 
from student
where  sName like '%y';

/* Query 20. List the Students in the order of their GPA. */ 
select sName 
from student
order by GPA;

/* Query 21. List the details of the students in order of the ascending of GPA and descending of DoB. */
select * 
from student
order by GPA , DoB desc;

/* Query 22. List the sIDs of student who apply in either ‘Stanford’, ‘Cornell’ or ‘MIT’ college. */
select sID 
from Apply
where cName = 'Stanford' or cName = 'Cornell' or cName = 'MIT';
    -- OR
select sID 
from Apply
WHERE cName IN ('Stanford', 'Cornell', 'MIT');

/* Query 23. Delete all applications filled at Stanford (Choose table wisely) */
delete from Apply
where cName = 'Stanford';

/* Query 24. Delete the college Stanford from college table. */
delete from College
where cName = 'Stanford';

/* Query 25. Modify the GPA of all students by giving 10% raise in their GPA. */
update student
set GPA = GPA + (GPA * 0.1);

/* Query 26. Increment the GPA of the students by 1.5 whose GPA is less than 
   3.5 and belong to High School having size greater than 1500. */
update student
set GPA = GPA + 1.5 
where sizeHS > 1500 and GPA < 3.5;

/* Query 27. Delete the students who have scored less than 3.2 GPA. */
delete from student
where GPA < 3.2;
