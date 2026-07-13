SELECT GROUP_CONCAT(contador ORDER BY contador ASC SEPARATOR '&')
FROM  (
WITH RECURSIVE secuencia AS (
    SELECT 2 AS contador
    UNION ALL
    SELECT contador + 1 
    FROM secuencia
    WHERE contador < 1000
    )
    SELECT S1.contador  
    FROM secuencia S1 
    LEFT JOIN  secuencia S2 ON S2.contador <=  SQRT(S1.contador)
    GROUP BY S1.contador 
    HAVING SUM(CASE WHEN S1.contador % S2.contador = 0  THEN 1 ELSE 0 END) = 0
) AS PRIMOS