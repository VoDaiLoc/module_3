create database quanlysinhvien;
use quanlysinhvien;
create table Class(
ClassID int not null primary key auto_increment,
ClassName varchar(60) not null,
StartDate datetime not null,
status bit
);
create table Student(
StudentID int not null primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null
);
create table Subject(
SubID int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1 check(credit>=1),
Status bit default 1
);
create table Mark(
MarkID int not null primary key auto_increment,
SubID int not null unique key,
StudentID int not null unique key,
Mark float default 0 check( Mark between 0 and 100),
ExamTimes tinyint default 1
);

alter table Student 
add constraint foreign key (ClassID) references Class(ClassID);
alter table Mark
add constraint unique (Subid, Studentid);
alter table mark
add constraint foreign key(subid) references subject(subid);
alter table mark
add constraint foreign key(studentid) references student(studentid);