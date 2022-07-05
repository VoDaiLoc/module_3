use quanlysinhvien;
select address, count(studentid) as 'So luong hoc vien'
from student
group by Address;

select s.studentid, s.studentname, avg(mark)
from student s join mark m on s.StudentID = m.StudentId
group by s.studentid, s.studentname;

select s.studentid, s.studentname, avg(mark)
from student s join mark m on s.StudentID=m.StudentId
group by s.StudentID,s.StudentName
having avg(mark) >15;

select s.studentid, s.studentname, avg(mark)
from student s join mark m on s.StudentID=m.StudentId
group by s.StudentID,s.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);