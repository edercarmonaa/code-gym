#Count how many movies exist in each genre. Show genre and movie_count. Sort by movie_count descending to see the most popular genres first.
select 
genre,
count(*) as movie_count
from movies
group by genre
order by movie_count desc
