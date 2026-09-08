# Welcome to SQL! Write a query to see all the data in the passengers table. 
# Select every column and limit the results to the first 10 rows. This is how every SQL journey begins.

select * from passengers limit 10 

# You don't always need every column. Select just the title, year, and rating from the movies table. 
# Order by year descending to see the newest movies first. Limit to 15 rows.

select title, year, rating from movies order by year desc
limit 15
