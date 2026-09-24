#A regular JOIN drops customers with no orders. A LEFT JOIN keeps them. 
#Show every customer with their name, membership, order_count (0 if no orders), 
#and total_spent (rounded to 2 decimals; 0 if no orders). Sort by total_spent descending, then name. 
#This is your first encounter with how JOINs handle missing data.

select C.name, C.membership, 
case when count(O.order_id) is null then 0 else count(O.order_id) end as order_count, 
case when round(sum(O.total),2) is null then 0 else round(sum(O.total),2) end as total_spent
from customers C
left join orders O on C.customer_id = O.customer_id
group by C.name
order by total_spent desc, C.name 
