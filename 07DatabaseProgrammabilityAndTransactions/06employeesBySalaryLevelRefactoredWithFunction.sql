DELIMITER $$
CREATE FUNCTION ufn_get_salary_level(salary DECIMAL(19,4)) 
RETURNS VARCHAR(10)
RETURN (
	CASE
		WHEN salary < 30000 THEN 'Low'
		WHEN salary <= 50000 THEN 'Average'
		ELSE 'High'
	END
);

CREATE PROCEDURE usp_get_employees_by_salary_level(salary_level VARCHAR(10))
BEGIN
	SELECT first_name, last_name from employees
	WHERE (ufn_get_salary_level(salary) = salary_level)
	ORDER BY first_name DESC, last_name DESC;			
END $$
DELIMITER ; ;