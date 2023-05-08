-- 7. Найти оценки студентов в отдельной группе по определенному предмету.
SELECT d.name, s.fullname, gr.name AS name_group, g.grade 
FROM grades g 
JOIN disciplines d ON d.id = g.discipline_id 
JOIN students s ON s.id = g.student_id
JOIN groups gr ON gr.id = s.group_id 
WHERE gr.id  = 2 AND d.id = 1
ORDER BY s.fullname;