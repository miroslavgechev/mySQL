CREATE FUNCTION udf_client_bill(full_name VARCHAR(50))
RETURNS DECIMAL(19,2)
RETURN (SELECT 
   SUM(p.price) AS bill
FROM
    clients AS c
        JOIN
    orders_clients AS oc ON c.id = oc.client_id
        JOIN
    orders AS o ON oc.order_id = o.id
        JOIN
    orders_products AS op ON o.id = op.order_id
        JOIN
    products AS p ON p.id = op.product_id
WHERE
    c.first_name = substring(full_name, 1, locate(' ', full_name) - 1)
        AND c.last_name = substring(full_name, locate(' ', full_name) + 1));