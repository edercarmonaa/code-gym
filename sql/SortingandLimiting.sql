#Find the top 10 highest-grossing movies. Show title, year, revenue_millions, and rating. 
#Exclude movies where revenue is NULL. 
#Sort by revenue descending.

select title, year, revenue_millions, rating 
from movies
where revenue_millions is not null
order by revenue_millions desc 
limit 10 
