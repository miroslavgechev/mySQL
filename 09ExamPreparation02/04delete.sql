DELETE FROM
    customers AS c
WHERE
    (SELECT 
            COUNT(*)
        FROM
            orders
        WHERE
            c.id = customer_id) = 0;