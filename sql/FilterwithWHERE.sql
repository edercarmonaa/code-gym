#Find all passengers who survived the Titanic (survived = 1). Show their name, sex, age, and pclass. Limit to 20 rows.

SELECT  name, sex, age, pclass from passengers
where survived = 1
limit 20
