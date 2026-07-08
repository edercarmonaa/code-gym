with filas as (SELECT H.hacker_id, H.name, S.challenge_id,
    MAX(S.score) OVER (PARTITION BY S.hacker_id, S.challenge_id) as points,
    ROW_NUMBER() OVER (PARTITION BY S.hacker_id, S.challenge_id ORDER BY S.score DESC) AS rn
    FROM Hackers H
    INNER JOIN Submissions S on H.hacker_id=S.hacker_id
    order  by H.hacker_id DESC, S.challenge_id DESC, S.score DESC)
    SELECT hacker_id, name, sum(points) as score from filas
where rn = 1 and  points > 0
group by hacker_id, name
order by score DESC, hacker_id
