select sub.subid,sub.subname,sub.credit
from subject sub
where sub.credit = (
select max(sub.credit) from subject sub);

select sub.subid, sub.subname, m.mark
from subject sub join mark m on sub.subid = m.subid
where m.mark = (
select max(m.mark) from mark m);

select s.studentid, s.studentname, s.address, s.phone,s.status,avg(m.mark)
from student s join mark m on s.StudentID=m.StudentId
group by s.studentid, s.studentname, s.address, s.phone,s.status
order by avg(m.mark), s.StudentName;