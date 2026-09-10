#Find male passengers in first class (pclass = 1) OR female passengers in third class (pclass = 3). 
#Show name, sex, pclass, age, and survived. Limit to 20 rows. Be careful with operator precedence!
select name, sex, pclass, age, survived from passengers
where 
sex = 'male' and pclass = 1 or 
sex = 'female' and pclass = 3
limit 20
