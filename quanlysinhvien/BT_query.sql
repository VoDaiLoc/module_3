select * from student
where StudentName like 'h%';
select * from class
where StartDate like '%-12-%';
select * from subject
where credit>3 and credit <5;
update student
set classid = 2
where studentname = 'Hung';
select s.studentname, sub.subname, m.mark
from student s left join mark m on s.StudentID = m.StudentId 
left join subject sub on m.SubId=sub.SubID;