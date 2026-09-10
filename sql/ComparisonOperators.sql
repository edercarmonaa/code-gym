#Find movies with a rating above 7.5 that were released between 2010 and 2016 (inclusive). 
#Show title, year, rating, and genre. Sort by rating descending.

select title, year, rating, genre from movies
where rating > 7.5
and year between 2010 and 2016 
order by rating desc
