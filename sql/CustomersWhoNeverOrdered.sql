#Amazon's CRM team wants to re-engage registered buyers who've created an account 
#but never placed an order — prime targets for dormant-user email campaigns. 
#Write a SQL query that returns the customer name for every such account. Order by name ascending. 
#This anti-join pattern (LEFT JOIN + NULL filter, or NOT IN / NOT EXISTS) is a bread-and-butter 
#Amazon analyst question — the same logic powers every re-activation campaign.
select C.name 
from customers C
Left join orders O on c.customer_id = o.customer_id
where O.order_id is null
order by name asc
