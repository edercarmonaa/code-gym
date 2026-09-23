#Combine data from two tables! JOIN the orders and customers tables to show: customer name, membership, product, total, and order_date. 
#Sort by order_date descending. 
#Limit to 15 rows. JOINs let you connect related tables using a shared key.
select c.name, c.membership, o.product, o.total, o.order_date 
from customers c join orders o on
c.customer_id = o.customer_id
order by o.order_date desc
limit 15
