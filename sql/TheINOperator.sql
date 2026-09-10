# Find employees in the Engineering, Marketing, or Sales departments. 
# Show name, department, position, and salary. Sort by department, then salary descending. IN is cleaner than writing multiple OR conditions.
select name, department, position, salary 
from employees
where department in ('Engineering', 'Marketing', 'Sales')
order by department, salary desc
