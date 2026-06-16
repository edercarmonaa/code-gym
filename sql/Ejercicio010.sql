/*
Samantha was tasked with calculating the average monthly salaries for 
all employees in the EMPLOYEES table, but did not realize her keyboard's  
key was broken until after completing the calculation. She wants your help 
finding the difference between her miscalculation (using salaries with any 
zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), 
and round it up to the next integer.

The EMPLOYEES table is described as follows:
+-------------+---------+
| Column Name  | Type    |
+-------------+---------+
| employee_id  | int     |
| name         | varchar |
| salary       | int     |
+-------------+---------+
*/
SELECT CEIL(AVG(salary) - AVG(REPLACE(salary, '0', ''))) AS error
FROM EMPLOYEES; 

/*  
We define an employee's total earnings to be their monthly  
worked, and the maximum total earnings to be the maximum total earnings 
for any employee in the Employee table. Write a query to find the maximum total 
earnings for all employees as well as the total number of employees who have maximum 
total earnings. Then print these values as  space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:
+-------------+---------+
| Column Name  | Type    |
+-------------+---------+
| employee_id  | int     |
| name         | varchar |
| salary       | int     |
| months      | int     |
+-------------+---------+
*/

SELECT (SALARY * MONTHS) AS earnings, COUNT(*)
FROM EMPLOYEE
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;
