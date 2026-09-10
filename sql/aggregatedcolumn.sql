#Calculate salary statistics for all employees: total_payroll (SUM), 
#avg_salary (AVG, rounded to nearest dollar), 
#highest_salary (MAX), lowest_salary (MIN), and salary_spread (MAX minus MIN).

select sum(salary) as total_payroll,
round(AVG(salary)) as avg_salary,
max(salary) as highest_salary,
min(salary) as lowest_salary,
max(salary) - min(salary) as salary_spread
from employees
