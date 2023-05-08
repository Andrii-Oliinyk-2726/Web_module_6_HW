-- 9. Найти список курсов, которые посещает определенный студент.
SELECT s.fullname, d.name 
FROM grades g 
JOIN students s
JOIN disciplines d ON d.id = g.discipline_id
WHERE s.id = 33
GROUP BY d.name
;