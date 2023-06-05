DELIMITER $$
CREATE PROCEDURE udp_happy_hour(type VARCHAR(50))
BEGIN
	UPDATE products as p
    SET price = price * 0.8
    WHERE price >= 10 AND p.type = type;
END$$
DELIMITER ;
