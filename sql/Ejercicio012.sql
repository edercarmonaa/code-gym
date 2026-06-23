/*
You are given two tables: Students and Grades. 
Students contains three columns ID, Name and Marks.
ID INT 
NAME VARCHAR(100)
MARKS INT

Grades contains the following data:
GRADE MIN_MARKS MAX_MARKS
1       0           9
2       10          19
3       20          29
4       30          39
5       40          49
6       50          59
7       60          69
8       70          79
9       80          89
10      90          100

Ketty gives Eve a task to generate a report containing three columns: 
Name, Grade and Mark. Ketty doesn't want the NAMES of those students 
who received a grade lower than 8. The report must be in descending 
order by grade -- i.e. higher grades are entered first. If there is more 
than one student with the same grade (8-10) assigned to them, order those 
particular students by their name alphabetically. Finally, if the grade is 
lower than 8, use "NULL" as their name and list them by their grades in descending 
order. If there is more than one student with the same grade (1-7) assigned to them, 
order those particular students by their marks in ascending order.

*/
SELECT 
CASE 
    WHEN MARKS BETWEEN 90 AND 100 THEN NAME
    WHEN MARKS BETWEEN 80 AND 89 THEN NAME
    WHEN MARKS BETWEEN 70 AND 79 THEN NAME
    ELSE NULL   
END AS NAME,
GRADE,
MARKS
FROM STUDENTS S
INNER JOIN GRADES G ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK
ORDER BY 
GRADE DESC,
    CASE 
        WHEN name IS NOT NULL THEN name 
        ELSE NULL 
    END ASC