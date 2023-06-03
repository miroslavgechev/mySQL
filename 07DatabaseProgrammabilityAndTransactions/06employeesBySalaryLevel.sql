DELIMITER $$
CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN
	CASE
		WHEN salary_level = 'low' THEN 
			(SELECT first_name, last_name from employees
				WHERE salary < 30000
				ORDER BY first_name DESC, last_name DESC);
		WHEN salary_level = 'average' THEN
			(SELECT first_name, last_name from employees
				WHERE salary BETWEEN 30000 and 50000
				ORDER BY first_name DESC, last_name DESC);
		WHEN salary_level = 'high' THEN
			(SELECT first_name, last_name from employees
				WHERE salary > 50000
				ORDER BY first_name DESC, last_name DESC);
		ELSE (SELECT first_name, last_name from employees
				WHERE salary IS NULL
				ORDER BY first_name DESC, last_name DESC);
	END CASE;
END $$
DELIMITER ; ;
