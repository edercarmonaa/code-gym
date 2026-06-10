/*Query the Name of any student in STUDENTS who scored higher than  Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

Input Format

The STUDENTS table is described as follows:

ID  INTEGER
NAME STRING
MARKS INTEGER


The Name column only contains uppercase (A-Z) and lowercase (a-z) letters.

*/

SELECT NAME FROM STUDENTS 
WHERE 
MARKS > 75
ORDER BY RIGHT(NAME,3) ASC, ID ASC

/*Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

Input Format

The Employee table containing employee data for a company is described as follows:

EMPLOYEE_ID INTEGER
NAME STRING
MONTHS  INTEGER
SALARY INTEGER

where employee_id is an employee's ID number, 
name is their name, months is the total number of months they've been working for the company, and salary is their monthly salary.
*/

SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC

/*Write a query that prints a list of employee names (i.e.: the name attribute) 
for employees in Employee having a salary greater 
than 2000 per month who have been employees for less than 10 months. 
Sort your result by ascending employee_id.

*/
SELECT NAME FROM EMPLOYEE 
WHERE 
SALARY > 2000
AND MONTHS < 10
ORDER BY EMPLOYEE_ID ASC;

/*Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
Input Format

The TRIANGLES table is described as follows:
A INTEGER
B INTEGER
C INTEGER   
*/

SELECT
CASE
WHEN A + B <= C THEN 'Not A Triangle'
WHEN A = B AND A = C AND B = C THEN 'Equilateral'
WHEN A <> B AND B <> C AND A <> C THEN 'Scalene'
ELSE 'Isosceles'
END 
FROM TRIANGLES

