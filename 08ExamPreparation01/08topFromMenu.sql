SELECT 
    p.id, p.name, COUNT(*) AS count
FROM
    products AS p
        JOIN
    orders_products AS op ON p.id = op.product_id
WHERE
    p.id = op.product_id
GROUP BY name
HAVING count >= 5
ORDER BY count DESC , name ASC