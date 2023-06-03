DELIMITER $$
CREATE PROCEDURE usp_get_employees_salary_above(salary_limit DECIMAL(10,4))
BEGIN
	SELECT 
		first_name, last_name
	FROM
		employees
	WHERE
		salary >= salary_limit
	ORDER BY first_name , last_name , employee_id;
END $$
DELIMITER ; ;