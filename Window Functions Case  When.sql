-- Find the 4th lowest scorer in Maths and Phy test scores combined. 

SELECT 
    fullname, (mtest + ptest) AS total
FROM
    student
ORDER BY total
LIMIT 1 OFFSET 3;

-- Assign a roll number to each student after sorting their name alphabetically within each class.

SELECT
    fullname,
    class,
    ROW_NUMBER() OVER (PARTITION BY class ORDER BY fullname) AS rollnumber
FROM student
ORDER BY class, rollnumber;

-- Categorize the students into 3 categories:

SELECT 
    fullname,
    class,
    mtest,
    ptest,
    CASE
        WHEN mtest > 95 THEN 'scholars'
        WHEN mtest BETWEEN 90 AND 94 THEN 'avg'
        ELSE 'dumb'
    END AS category
FROM
    student
ORDER BY class , category;

