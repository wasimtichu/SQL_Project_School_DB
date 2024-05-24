--  Use trim to remove any un-necessary space.

SELECT 
    TRIM(fullname) AS cleaned
FROM
    student;

-- Convert fullname into lower case

SELECT 
    LOWER(fullname) AS low
FROM
    student;

-- Find total no. of chars in the fullname

SELECT 
    LENGTH(fullname) AS totalchar
FROM
    student;

SELECT 
    LENGTH(TRIM(fullname)) AS total_chars_without_spaces
FROM
    student;

-- Extract first two chars from fullname

SELECT 
    LEFT(fullname, 2) AS first_two_chars
FROM
    student;

-- Extract last two chars from fullname

SELECT 
    RIGHT(fullname, 2) AS last_two_chars
FROM
    student;

-- Extract only last name using Right

SELECT 
    RIGHT(fullname,
        LENGTH(fullname) - INSTR(fullname, ' ')) AS last_name
FROM
    student;

-- Extract only last name using Mid

SELECT 
    MID(fullname, INSTR(fullname, ' ') + 1) AS last_name
FROM
    student;
