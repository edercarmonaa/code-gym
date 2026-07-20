WITH FILAS AS (
    SELECT 
    submission_date, 
    hacker_id, 
    COUNT(hacker_id) AS envios,
    ROW_NUMBER() OVER (PARTITION BY  submission_date ORDER BY  COUNT(hacker_id) DESC, hacker_id ASC ) AS row_num
    FROM Submissions
    GROUP BY submission_date, hacker_id
),
ResumenSubmissions AS (
    SELECT 
        s1.submission_date, 
        s1.hacker_id,
        DENSE_RANK() OVER (
        ORDER BY s1.submission_date ) AS dias,
        COUNT(s1.submission_date) OVER (
            PARTITION BY s1.hacker_id 
            ORDER BY s1.submission_date
            ) AS dias_activos
    FROM FILAS s1
),
UNICOS AS (
  SELECT 
    submission_date, 
    COUNT(DISTINCT hacker_id) AS uni
FROM ResumenSubmissions  
WHERE dias_activos = dias
GROUP BY submission_date
)
select f.submission_date, U.uni, h.hacker_id, H.name 
from hackers H
INNER join filas  F on h.hacker_id= f.hacker_id 
INNER join unicos U on f.submission_date = u.submission_date
where row_num = 1
order by f.submission_date