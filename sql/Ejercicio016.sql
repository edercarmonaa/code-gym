with filas AS (
    SELECT H.hacker_id, H.name, count(C.challenge_id)as cant,
    COUNT(*) OVER(PARTITION BY count(C.challenge_id)) AS total_repetidos,
    MAX(count(C.challenge_id)) OVER() AS valor_maximo
    FROM Hackers H
    INNER JOIN Challenges C on H.hacker_id=C.hacker_id
    group by H.hacker_id, H.name
    ORDER BY cant DESC, H.hacker_id
) 
select hacker_id, name, cant from filas 
where total_repetidos = 1
OR cant =  valor_maximo