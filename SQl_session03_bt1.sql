create database sesion3_bt1;
use sesion3_bt1;
create table class(
classID int primary key,
className varchar(100) not null,
startDate date not null,
statuss int
);
create table student(
studentId int primary key,
studentName varchar(100) not null,
studentAddress varchar(250) not null,
studentPhone varchar(10),
studentStatus int,
classId int,
foreign key (classId) references class(classID) 
);
alter table student modify studentPhone varchar(15);
create table subjects(
subId int primary key,
subName varchar(200) not null,
credit varchar(100),
statuss int 
);
create table mark(
markId int,
markSub_Id int,
foreign key (markSub_Id) references subjects(subId),
studenId int,
foreign key(studenId) references student(studentId),
mark float,
examTime date
);
insert into class(classID,className,startDate,statuss) values
(1,'lớp 1','2014-9-1',1),
(2,'lớp 2','2023-12-2',1),
(3,'lớp 3','2014-12-9',2);
insert into student(studentId,studentName,studentAddress,studentPhone,classId) values
(1,'hường','hà nội','09066201307',1),
(2,'thu','phú thọ','09066201307',2),
(3,'hòa','vĩnh yên','09066201307',3);
insert into subjects(subId,subName,credit,statuss) values 
(1,'A',2,1),
(2,'B',3,2),
(3,'C',4,1);
insert into mark(markId,markSub_Id,studenId,mark,examTime) values 
(1,3,1,7.2,'2013-5-9'),
(2,2,2,9.0,'2013-5-9'),
(3,1,4,5.0,'2013-5-9');
select * from student where studentName like 'h%';
select * from class where month(startDate) = 12;
select * from subjects where credit between 3 and 5;
update student set studentId=4 where studentName = 'hòa';
select * from mark order by mark desc;

