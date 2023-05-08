-- 5. Найти какие курсы читает определенный преподаватель.
SELECT t.fullname, d.name AS name_discipline 
FROM disciplines d
LEFT JOIN teachers t ON t.id = d.teacher_id 
WHERE t.id = 4; 