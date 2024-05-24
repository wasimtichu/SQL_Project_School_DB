create database school_db;

SELECT 
    *
FROM
    student;

SELECT 
    *
FROM
    student
WHERE
    sex = 'F' AND mtest < 92;

alter table student
add column date date;

SELECT 
    *
FROM
    student
WHERE
    remission = 0;

SELECT 
    *
FROM
    student
WHERE
    dcode = 'ymt';

UPDATE student 
SET 
    date = STR_TO_DATE(LEFT(dob, 8), '%d-%c-%y');

SELECT 
    fullname, date
FROM
    student
WHERE
    date < '2020-01-01';

SELECT 
    fullname,
    DATEDIFF(CURRENT_DATE(), date) AS ageindays,
    TIMESTAMPDIFF(YEAR,
        date,
        CURRENT_DATE()) AS ageinyears,
    TIMESTAMPDIFF(MONTH,
        date,
        CURRENT_DATE()) AS ageinmonths
FROM
    student;






