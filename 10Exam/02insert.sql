INSERT INTO courses (name, duration_hours, start_date, teacher_name, description, university_id)
(SELECT 
	concat(teacher_name, ' course'),
	(char_length(name) / 10),
	date_add(date(start_date), interval 5 day),
	reverse(teacher_name),
	concat('Course ', teacher_name, reverse(description)),
	day(start_date) as university_id
 FROM courses
 WHERE id <= 5);