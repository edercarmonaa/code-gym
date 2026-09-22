#Find movie genres that have at least 5 movies AND an average rating above 6.5. Show genre, movie_count, avg_rating (2 dec), 
#and total_revenue (sum of revenue_millions, 0 dec). 
#Sort by avg_rating descending. HAVING filters groups after aggregation, while WHERE filters rows before.

select genre, count(*) as movie_count, round(avg(rating),2) as avg_rating, round(sum(revenue_millions),0) as total_revenue 
from  movies
group by genre
having movie_count >= 5 and avg(rating) > 6.5
order by avg(rating) desc
