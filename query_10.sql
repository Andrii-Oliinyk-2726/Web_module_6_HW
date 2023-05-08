-- 10. Список курсов, которые определенному студенту читает определенный преподаватель.
SELECT s.fullname AS name_of_student, t.fullname AS name_of_teacher, d.name 
FROM grades g 
JOIN students s ON s.id = g.student_id 
JOIN disciplines d ON d.id = g.discipline_id
JOIN teachers t ON t.id = d.teacher_id 
WHERE t.id = 1 AND s.id = 22
GROUP BY d.name
;