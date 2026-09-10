#Find all passengers whose name contains 'Mrs.' — these are married women. 
#Show name, age, pclass, and survived. Sort by age descending. Limit to 15 rows. 
#The % wildcard matches any number of characters.

select  name, age, pclass, survived from passengers
where name like '%Mrs.%'
order by age desc
limit 15
