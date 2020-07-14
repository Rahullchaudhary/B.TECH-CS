create table student(
                     sID integer,
                     sNAME varchar(10),
                     GPA float,
                     sizeHS integer,
                     DoB date
);

insert into student values(123,'Amy',3.9,1000,'26-jun-96');
insert into student values(234,'Bob',3.6,1500,'7-Apr-95');
insert into student values(345,'Craig',3.5,500,'4-Feb-95');
insert into student values(456,'Doris',3.9,1000,'24-Jul-97');
insert into student values(567,'EDward',2.9,2000,'21-Dec-96');
insert into student values(678,'Fay',3.8,200,'27-Aug-96');
insert into student values(789,'Gary',3.4,800,'8-Oct-96');
insert into student values(987,'Helen',3.7,800,'27-Mar-97');
insert into student values(876,'Irene',3.9,400,'7-Mar-96');
insert into student values(765,'Jay',2.9,1500,'8-Aug-98');
insert into student values(654,'Amy',3.9,1000,'26-May-96');
insert into student values(543,'Craig',3.4,2000,'27-Aug-98');

select * from student;