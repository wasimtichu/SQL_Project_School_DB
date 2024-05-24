-- List the names of the students who are playing a musical instrument (Hint: refer to Music and Student tables both)

select fullname, id
from student
where id in ( select id from music );

-- List the students who were born on Wednesday or Saturdays (Hint: Use WeekDay(DOB) function, which returns the day of the week (in number format between 1 & 7) corresponding to a given date – Eg – 1 means Sunday)

select fullname, date
from student
where dayname(date) in ( "wednesday", "saturday" );

-- List the students who were not born in January, March, and June (Hint: Use Month(DOB) function)

select fullname, date
from student
where monthname(date) not in ( "january", "march", "june" );

-- List the students who have scored between 70 and 80 and 90 and 100.

select fullname, mtest, ptest
from student
where ((mtest between 70 and 80) or (mtest between 90 and 100)) and ((ptest between 70 and 80) or (ptest between 90 and 100));

