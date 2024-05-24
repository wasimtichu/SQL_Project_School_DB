-- Find the number of students learning piano in each class.

SELECT 
    s.Class, COUNT(s.id) AS num_students_learing_piano
FROM
    student s
        LEFT JOIN
    music m ON s.id = m.id
WHERE
    m.Type = 'piano'
GROUP BY s.class;

--  List the students who have not yet chosen an instrument.

SELECT 
    s.FullName, s.ID, m.Type
FROM
    student s
        LEFT JOIN
    music m ON s.id = m.id
WHERE
    type IS NULL;

--   List all the students from class “1A”. Also, show the type of instruments they play.

SELECT 
    s.ID, s.FullName, s.Class, m.Type
FROM
    student s
        LEFT JOIN
    music m ON s.id = m.id
WHERE
    class = '1A';

-- List all the students who have scored more than 90 in Maths and are playing Guitar.

SELECT 
    s.ID, s.FullName, m.Type, s.MTest
FROM
    student s
        LEFT JOIN
    music m ON s.id = m.id
WHERE
    s.mtest > 80 AND m.type = 'guitar';

--  List all the instrument types from the music table. Also, show the name and district of the students playing these instruments.

SELECT 
    s.ID, s.FullName, m.Type, s.DCode
FROM
    student s
        JOIN
    music m ON s.id = m.id;


