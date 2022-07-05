insert into class(classname,startdate,status)
values('A1','2008/12/20',1);
insert into class(classname,startdate,status)
values('A2','2008/12/22',1);
insert into class(classname,startdate,status)
values('B3',current_date(),0);

insert into student (studentname, address,phone,status,classid)
values('Hung','Ha Noi','0912113113',1,1);
insert into student (studentname, address,phone,status,classid)
values('Hoa','Hai Phong','',1,1);
insert into student (studentname, address,phone,status,classid)
values('Manh','HCM','0123123123',0,2);

insert into subject(subname,credit,status)
values('CF',5,1);
insert into subject(subname,credit,status)
values('C',6,1);
insert into subject(subname,credit,status)
values('HDJ',5,1);
insert into subject(subname,credit,status)
values('RDBMS',10,1);

drop table mark;


insert into mark(subid,studentid,mark,examtimes)
values(1,1,8,1);
insert into mark(subid,studentid,mark,examtimes)
values(1,2,10,2);
insert into mark(subid,studentid,mark,examtimes)
values(2,1,12,1);