INSERT INTO products (name, type, price)
( 
	SELECT 
		CONCAT(last_name, ' specialty'),
		'Cocktail' AS type,
		(CEILING(salary * 0.01)) AS price
	FROM
		waiters
	where id > 6
);
