CREATE FUNCTION udf_customer_products_count(name VARCHAR(30))
RETURNS INT
RETURN (
SELECT 
	COUNT(*) AS `total_products`
FROM
    customers c
        JOIN
    orders AS o ON c.id = o.customer_id
        JOIN
    orders_products AS op ON o.id = op.order_id
WHERE
    c.first_name = name
);
