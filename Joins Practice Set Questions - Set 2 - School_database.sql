-- Make a checking list of students and the instruments they learn. The list should also contain the students without an instrument.

select s.ID, s.FullName, m.Type
from student s left join music m on s.id = m.id;

-- List all the female students playing Guitar or Piano

select s.FullName, s.Sex, m.Type
from student s join music m on s.id = m.id
where s.sex = "f" and ( m.type = "guitar" or m.type = "piano" );

-- Show all the female students. Also, show the type of instruments they play, if any.

select s.FullName, s.Sex, m.type
from student s left join music m on s.id = m.id
where s.sex = "f";

-- Show all the students who have scored more than 90 in Maths. Also, show the type of instruments they play, if any.

select s.FullName, s.MTest, m.type
from student s left join music m on s.id = m.id
where s.mtest > 90;

