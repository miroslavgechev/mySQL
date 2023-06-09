DELIMITER $$
CREATE PROCEDURE udp_reduce_price(category_name VARCHAR(50))
BEGIN
	   UPDATE products p
			JOIN
		reviews r ON r.id = p.review_id
			JOIN
		categories c ON c.id = p.category_id 
	SET 
		p.price = price * 0.70
	WHERE
		c.name = category_name AND r.rating < 4;
END $$
DELIMITER ;

-- DELIMITER $$
-- CREATE PROCEDURE udp_reduce_price(category_name VARCHAR(50))
-- BEGIN
-- 		UPDATE products AS p 
-- 	SET 
-- 		p.price = p.price * 0.7
-- 	WHERE
-- 		p.category_id = (SELECT 
-- 				c.id
-- 			FROM
-- 				categories AS c
-- 			WHERE
-- 				c.name = category_name)
-- 			AND (SELECT 
-- 				rating
-- 			FROM
-- 				reviews AS r
-- 			WHERE
-- 				r.id = p.review_id) < 4
-- 	;
-- END$$
-- DELIMITER ;