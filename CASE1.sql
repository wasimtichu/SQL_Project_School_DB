-- List all the 2A students --

SELECT 
    *
FROM
    student
WHERE
    class = '2A';

-- List the names and Math test scores of the 1B boys. --

SELECT 
    name, mtest, class
FROM
    student
WHERE
    class = '1b';

-- List the classes, names of students whose names contain the letter "e" as the third letter. --

SELECT 
    name, class
FROM
    student
WHERE
    SUBSTRING(name, 3, 1) = 'e';

-- List the classes, names of students whose names start with "T" and do not contain "y". --

SELECT 
    name, class
FROM
    student
WHERE
    name LIKE 'T%' AND name NOT LIKE '%y%';

-- List the names of 1A students whose Math test score is not 51, 61, 71, 81, or 91. --

SELECT 
    name, class, mtest
FROM
    student
WHERE
    class LIKE '1a'
        AND mtest NOT IN (51 , 61, 71, 81, 91);

-- List the students who were born between 22 March 1986 and 21 April 1986 --

alter table student
add column newdob date;

UPDATE student 
SET 
    newdob = STR_TO_DATE(dob, '%d-%m-%Y');

SELECT 
    name, newdob
FROM
    student
WHERE
    newdob BETWEEN '1986-03-22' AND '1986-04-21';

-- Find the number of girls living in TST. --

SELECT 
    COUNT(dcode) AS totalinTST
FROM
    student
WHERE
    dcode = 'tst' AND sex = 'f'
GROUP BY dcode;

-- List the number of pass in the Math test of each class. (passing mark = 50) --

SELECT 
    COUNT(class) AS totalpassed, class
FROM
    student
WHERE
    mtest >= 50
GROUP BY class;

-- List the number of girls grouped by each class --

SELECT 
    COUNT(class), class
FROM
    student
WHERE
    sex = 'f'
GROUP BY class;

-- List the number of girls grouped by the year of birth. --

SELECT 
    COUNT(YEAR(newdob)) AS totalgirls, YEAR(newdob) AS year
FROM
    student
WHERE
    sex = 'f'
GROUP BY YEAR(newdob);

-- Find the average mark of mtest for each class. --

SELECT 
    AVG(mtest), class
FROM
    student
GROUP BY class;

-- Find the maximum mark of mtest for each sex. --

SELECT 
    MAX(mtest) AS maxmark, sex
FROM
    student
GROUP BY sex;

-- Find the average mark of mtest for all students. --

SELECT 
    AVG(mtest) AS avgmark
FROM
    student;

-- List the students who are common members of the Physics Club and the Chemistry Club. --

SELECT 
    c.FullName
FROM
    chem c
        INNER JOIN
    phy p ON c.id = p.id;

-- List the students who are common members of the Chemistry Club and Biology Club but not of the Physics Club. --

SELECT 
    c.FullName
FROM
    bio b
        INNER JOIN
    chem c ON b.id = c.id
        LEFT JOIN
    phy p ON c.id = p.id
WHERE
    p.id IS NULL;

-- Produce a list of parts in ascending order of quantity. --

SELECT 
    *
FROM
    client
ORDER BY qty;

-- Produce a list of parts that consist of the keyword ‘Shaft’ in the description. --

select *
from client
where Descript like "%shaft%";

-- Produce a list of parts that have a quantity more than 20 and are supplied by ‘China Metals Co.’

select *
from client
where qty > 20 and Supplier = 'china metals co.';

-- List all the suppliers without duplication. --

select distinct supplier
from client;

-- Increase the quantity by 10 for those parts with quantity less than 10. --

UPDATE client 
SET 
    qty = qty + 10
WHERE
    qty < 10;

-- Delete records with part_no equal to 879, 654, 231 and 234 --

DELETE
FROM client
WHERE part_no IN (879, 654, 231, 234);

-- Add a field “Date_purchase” to record the date of purchase. --

ALTER TABLE client
ADD date_purchase DATE;
