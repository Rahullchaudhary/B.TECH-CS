create table Apply(
                  sID integer,
                  cNAME varchar(10),
                  major varchar(15),
                  decision char
);

insert into Apply values(123,'Stanford','CS','Y');
insert into Apply values(123,'Stanford','EE','N');
insert into Apply values(123,'Berkeley','CS','Y');
insert into Apply values(123,'Cornell','EE','Y');
insert into Apply values(234,'Berkeley','biology','N');
insert into Apply values(345,'MIT','bioengineering','Y');
insert into Apply values(345,'Cornell','bioengineering','N');
insert into Apply values(345,'Cornell','CS','Y');
insert into Apply values(345,'Cornell','EE','N');
insert into Apply values(678,'Stanford','history','Y');
insert into Apply values(987,'Stanford','CS','Y');
insert into Apply values(987,'Berkeley','CS','Y');
insert into Apply values(876,'Stanford','CS','N');
insert into Apply values(876,'MIT','biology','Y');
insert into Apply values(876,'MIT','marine biology','N');
insert into Apply values(765,'Stanford','history','Y');
insert into Apply values(765,'Cornell','history','N');
insert into Apply values(765,'Cornell','psychology','Y');
insert into Apply values(543,'MIT','CS','N');

select * from Apply;