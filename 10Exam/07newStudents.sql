SELECT 
    CONCAT_WS(' ', s.first_name, s.last_name) AS full_name,
    SUBSTRING(s.email, 2, 10) AS username,
    REVERSE(s.phone) AS password
FROM
    students as s
        LEFT JOIN
    students_courses as sc ON s.id = sc.student_id
WHERE
    sc.course_id IS NULL
ORDER BY password DESC