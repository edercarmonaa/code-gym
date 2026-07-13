WITH datos_ordenados AS 
(SELECT LAT_N, ROW_NUMBER() OVER (ORDER BY LAT_N) AS fila,
COUNT(*) OVER () AS total    FROM  STATION)
SELECT ROUND(AVG(LAT_N),4) AS mediana FROM datos_ordenados
WHERE fila IN (FLOOR((total + 1) / 2), 
CEIL((total + 1) / 2));