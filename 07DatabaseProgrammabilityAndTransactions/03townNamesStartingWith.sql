DELIMITER $$
CREATE PROCEDURE usp_get_towns_starting_with(name_starts_with VARCHAR(50))
BEGIN
	SELECT 
		name as town_name
	FROM
		towns
	WHERE
		LOWER(name) LIKE LOWER(CONCAT(name_starts_with,'%'))
	ORDER BY town_name;
END $$
DELIMITER ; ;
