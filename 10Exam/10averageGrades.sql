CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS DECIMAL(3,2)
RETURN (
SELECT 
    AVG(sc.grade) AS average_alumni_grade
FROM
    courses AS c
        JOIN
    students_courses AS sc ON c.id = sc.course_id
        JOIN
    students AS s ON s.id = sc.student_id
WHERE
    c.name = course_name
        AND s.is_graduated = 1
        );
        
SELECT 
    c.name,
    UDF_AVERAGE_ALUMNI_GRADE_BY_COURSE_NAME('Quantum Physics') AS average_alumni_grade
FROM
    courses c
WHERE
    c.name = 'Quantum Physics';
