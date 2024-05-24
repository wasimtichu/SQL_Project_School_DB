-- List the names of the boys from District HHM if there exists at least one female in HHM.

SELECT 
    fullname, dcode
FROM
    student
WHERE
    sex = 'M' AND dcode = 'hhm'
        AND EXISTS( SELECT 
            *
        FROM
            student
        WHERE
            dcode = 'hhm' AND sex = 'F');

-- Fetch all the students from class 1A if there exists a student in class 1A who plays a musical instrument.

SELECT 
    s.fullname, s.Class
FROM
    student s
        JOIN
    music m ON s.id = m.id
WHERE
    s.class = '1a'
        AND EXISTS( SELECT 
            *
        FROM
            student s
                INNER JOIN
            music m ON s.id = m.id);

-- List of students from District HHM if everyone has scored more than 80

SELECT 
    fullname, dcode
FROM
    student
WHERE
    dcode = 'hhm'
        AND NOT EXISTS( SELECT 
            *
        FROM
            student
        WHERE
            mtest <= 80 AND dcode = 'hhm');

-- Find the names that are unique using exists or not exists.

SELECT 
    fullname
FROM
    student N1
WHERE
    NOT EXISTS( SELECT 
            *
        FROM
            student N2
        WHERE
            N2.FullName = N1.FullName
                AND N1.ID <> N2.ID);

-- Find the names that are repeating using exists or not exists

SELECT DISTINCT
    fullname
FROM
    student N1
WHERE
    EXISTS( SELECT 
            *
        FROM
            student N2
        WHERE
            N2.FullName = N1.FullName
                AND N1.ID <> N2.ID);

-- List the students who have scored lesser among the same named students

SELECT 
    fullname
FROM
    student N1
WHERE
    EXISTS( SELECT 
            *
        FROM
            student N2
        WHERE
            N2.FullName = N1.FullName
                AND N1.mtest > n2.MTest);

-- Create a roll number column after sorting the data by fullname

SELECT FullName,
       ROW_NUMBER() OVER (ORDER BY FullName) AS RollNumber
FROM Student;


