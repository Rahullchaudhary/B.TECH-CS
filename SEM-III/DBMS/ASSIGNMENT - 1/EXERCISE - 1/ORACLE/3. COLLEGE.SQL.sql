create table College(
                     cName varchar(10),
                     state varchar(2),
                     enrollment integer
);

insert into College values('Stanford','CA',15000);
insert into College values('Berkeley','CA',36000);
insert into College values('MIT','MA',10000);
insert into College values('Cornell','NY',21000);
insert into College values('Harvard','MA',50040);

select * from College;