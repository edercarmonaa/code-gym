#Answer three questions about the passengers table in a single query: How many total passengers are there? 
#How many survived? How many have a known age (age is not NULL)? Name the columns total, survived, and known_age.

select 
count (*) as total,
COUNT(CASE WHEN survived = 1 THEN 1 END) AS survived,
COUNT(CASE WHEN age is not null THEN 1 END) AS known_age
from passengers
