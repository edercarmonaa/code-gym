/*
Amber's conglomerate corporation just 
acquired some new companies. Each of the companies follows this hierarchy:

Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:

The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. 
For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
Input Format

The following tables contain company data:

Company: The company_code is the code of the company and founder is the 
founder of the company.

column_name	data_type
company_code	string
founder	string  

Lead_Manager: The lead_manager_code is the code of the lead manager, 
and the company_code is the code of the working company.

column_name	data_type
lead_manager_code	string
company_code	string

Senior_Manager: The senior_manager_code is the code of the senior manager, 
the lead_manager_code is the code of its lead manager, and 
the company_code is the code of the working company.

column_name	data_type
senior_manager_code	string
lead_manager_code	string
company_code	string

Manager: The manager_code is the code of the manager, the senior_manager_code 
is the code of its senior manager, the lead_manager_code is the code of its 
lead manager, and the company_code is the code of the working company.

column_name	data_type
manager_code	string
senior_manager_code	string
lead_manager_code	string
company_code	string  

Employee: The employee_code is the code of the employee, 
the manager_code is the code of its manager, 
the senior_manager_code is the code of its senior manager, 
the lead_manager_code is the code of its lead manager, 
and the company_code is the code of the working company.
column_name	data_type
employee_code	string
manager_code	string
senior_manager_code	string
lead_manager_code	string
company_code	string  
*/

SELECT COMPANY_CODE, FOUNDER, 
(SELECT COUNT(DISTINCT(LEAD_MANAGER_CODE)) FROM Lead_Manager 
WHERE COMPANY_CODE = CO.COMPANY_CODE ) AS 'LEAD',
(SELECT COUNT(DISTINCT(SENIOR_MANAGER_CODE)) FROM senior_Manager 
WHERE COMPANY_CODE = CO.COMPANY_CODE ) AS 'SENIOR',
(SELECT COUNT(DISTINCT(MANAGER_CODE)) FROM Manager 
WHERE COMPANY_CODE = CO.COMPANY_CODE ) AS 'manager',
(SELECT COUNT(DISTINCT(employee_CODE)) FROM Employee 
WHERE COMPANY_CODE = CO.COMPANY_CODE ) AS 'employee'
FROM COMPANY AS CO
ORDER BY COMPANY_CODE ASC;


SELECT 
    C.COMPANY_CODE, 
    C.FOUNDER, 
    COUNT(DISTINCT LM.LEAD_MANAGER_CODE) AS TOTAL_LEAD_MANAGERS,
    COUNT(DISTINCT SM.SENIOR_MANAGER_CODE) AS TOTAL_SENIOR_MANAGERS,
    COUNT(DISTINCT M.MANAGER_CODE) AS TOTAL_MANAGERS,
    COUNT(DISTINCT E.EMPLOYEE_CODE) AS TOTAL_EMPLOYEES
FROM COMPANY C
LEFT JOIN Lead_Manager LM  ON C.COMPANY_CODE = LM.COMPANY_CODE
LEFT JOIN Senior_Manager SM ON C.COMPANY_CODE = SM.COMPANY_CODE
LEFT JOIN Manager M         ON C.COMPANY_CODE = M.COMPANY_CODE
LEFT JOIN Employee E        ON C.COMPANY_CODE = E.COMPANY_CODE
GROUP BY C.COMPANY_CODE, C.FOUNDER
ORDER BY C.COMPANY_CODE ASC;