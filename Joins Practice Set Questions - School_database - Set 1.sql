--   List the students who are playing Piano from each class. Do mention the instrument type.

select s.ID, s.FullName, s.Class, m.Type
from student s join music m on s.id = m.id
where m.Type = "piano";

-- Make a list of students and the instruments they learn.

select s.ID, s.FullName, m.Type
from student s join music m on s.id = m.id;

