-- Find the position of first "a" in name of each customer.

SELECT 
    name, INSTR(name, 'a') AS first_a_position
FROM
    customers;

-- Display the customers' entire name but the last character

SELECT 
    LEFT(name, LENGTH(name) - 1) AS name_except_last
FROM
    customers;

-- Display the last two characters of the customers’ name

SELECT 
    RIGHT(name, 2) AS last_two
FROM
    customers

-- Select names containing a single “e”

SELECT 
    name
FROM
    customers
WHERE
    name LIKE '%e%'
        AND name NOT LIKE '%e%e%'List the first initial of all the students coming from YMT

SELECT LEFT(fullname, 1) AS first_initial
FROM student
WHERE dcode = 'YMT';

-- Display the entire name but the last character of students

SELECT LEFT(fullname, LENGTH(fullname) - 1) AS name_except_last
FROM student;

-- Display the last two characters of the students’ name

SELECT right(fullname, 2) AS last_two
FROM student;

-- Do the second question using Mid function

SELECT MID(fullname, 1, LENGTH(fullname) - 1) AS name_except_last
FROM student;

-- Display the last two characters of the students’ name using mid

SELECT MID(fullname, LENGTH(fullname) - 1, 2) AS last_two_characters
FROM student;

-- Show the fullname in Upper Case.

select upper(fullname) as uppercase
from student;

-- Select students whose name contain a single “e”.

SELECT FullName
FROM student
WHERE fullname LIKE '%e%';

-- Find the position of second “e” in fullnames

SELECT fullname,
       POSITION('e' IN SUBSTRING(fullname, POSITION('e' IN fullname) + 1)) + POSITION('e' IN fullname) AS position_of_second_e
FROM student;

-- Find the position of first "a" in name of each customer.

SELECT name, LOCATE('a', name) AS position_of_first_a
FROM customers;

-- Display the customers' entire name but the last character.

SELECT 
    LEFT(name, LENGTH(name) - 1) AS name_except_last
FROM
    customers;







