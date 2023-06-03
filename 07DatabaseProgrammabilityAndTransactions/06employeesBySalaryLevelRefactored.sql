DELIMITER $$
CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN
	SELECT first_name, last_name from employees
	WHERE (salary < 30000 AND salary_level = 'low')
    OR (salary BETWEEN 30000 AND 50000 and salary_level = 'average')
    OR (salary > 50000 and salary_level = 'high')
	ORDER BY first_name DESC, last_name DESC;			
END $$
DELIMITER ; ;