--SELECT * FROM student_Depression


--Acessing and grouping 
SELECT * FROM student_depression;


SELECT gender, COUNT(*) AS head_count
FROM student_depression
GROUP BY gender;

--Replacing values update statement and set statement 

UPDATE student_depression
SET gender = 'M' WHERE gender = 'Male';

UPDATE student_depression
SET gender = 'F' WHERE gender = 'Female';


--Checking for null values and blanks  in a column

SELECT * 
FROM student_depression
WHERE gender IS NULL;

SELECT * 
FROM student_depression
WHERE gender = '' ;


 SELECT * FROM student_depression;


 --Detail about the age column

 SELECT age, COUNT(*) FROM student_depression
 GROUP BY age
 ORDER BY age asc;

 --Altering the table to add the age group column

 ALTER TABLE student_depression
 ADD age_group TEXT --ALTERNATIVE OF VARCHAR(MAX) IT IS USED FOR PGSQL

--populating the column
UPDATE student_depression 
SET age_group = 
CASE
WHEN age BETWEEN 18 AND 24 THEN 'A1'
ELSE 
CASE WHEN age BETWEEN 25 AND 30 THEN 'A2'
ELSE 'A3'
END
END

--grouping the distinct age_groups 
SELECT  age_group, COUNT (*) FROM student_depression
GROUP BY age_group
ORDER BY age_group asc

 