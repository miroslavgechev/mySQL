SELECT 
    t.id,
    t.capacity,
    COUNT(oc.client_id) AS count_clients,
    (CASE SIGN(t.capacity - COUNT(oc.client_id))
        WHEN 1 THEN 'Free seats'
        WHEN 0 THEN 'Full'
        ELSE 'Extra seats'
    END) AS availability
FROM
    tables AS t
        JOIN
    orders AS o ON t.id = o.table_id
        JOIN
    orders_clients AS oc ON oc.order_id = o.id
WHERE
    t.floor = 1
GROUP BY t.id
ORDER BY t.id DESC;
