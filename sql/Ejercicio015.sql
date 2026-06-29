with FilasFiltradas AS (SELECT id, age, coins_needed, power,
ROW_NUMBER() OVER (PARTITION BY power, age 
ORDER BY coins_needed asc) AS posicion
FROM wands  W INNER JOIN  Wands_Property P ON 
W.CODE = P.CODE
where is_evil=0
)
SELECT 
    id, 
    age, 
    coins_needed,
    power
FROM FilasFiltradas
WHERE posicion = 1
order by power desc, age desc