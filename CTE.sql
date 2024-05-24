SELECT 
    fullname, HCode
FROM
    student
GROUP BY fullname , HCode
HAVING COUNT(fullname) = 1 AND HCode = 'R';

SELECT 
    s.FullName, s.MTest, m.Type
FROM
    student s
        JOIN
    music m ON s.id = m.id
WHERE
    s.mtest > 85 AND m.type = 'guitar';

SELECT 
    s.FullName, s.date, m.Type
FROM
    student s
        JOIN
    music m ON s.id = m.id
WHERE
    date > '2005-12-31'
        AND m.type = 'guitar';

SELECT 
    s.FullName, s.MTest, s.Class, m.Type
FROM
    student s
        JOIN
    music m ON s.id = m.id
WHERE
    s.mtest < 70 AND s.class = 'T';

SELECT 
    s.FullName, s.MTest, m.Type
FROM
    student s
        JOIN
    music m ON s.id = m.id
ORDER BY s.MTest DESC
LIMIT 3;

SELECT 
    s.FullName, s.MTest, m.Type
FROM
    student s
        JOIN
    music m ON s.id = m.id
WHERE
    s.mtest > 90;

WITH Top50 AS (
  SELECT id, MTest
  FROM student
  ORDER BY MTest DESC
  LIMIT 5
)

SELECT m.type, COUNT(*) AS popularity_count
FROM Top50 t
JOIN music m ON t.id = m.id
GROUP BY m.type
ORDER BY popularity_count DESC;

with students as (
select id, mtest, ptest
from student
where mtest-ptest > 10)
select m.type, s.id, s.mtest, s.ptest
from students s join music m on s.id=m.id
where m.type = "guitar";