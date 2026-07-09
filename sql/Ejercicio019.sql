select S.name  from Students S
inner join Friends F ON S.id = F.id
inner join Packages P ON S.id = P.id
inner join Packages G ON F.friend_id = G.id
where G.salary > P.Salary
order by G.Salary